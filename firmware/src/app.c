#include "app.h"
#include "config/PIC32MX570F512L/peripheral/gpio/plib_gpio.h"
#include "driver/driver_common.h"



APP_DATA appData; // app globals
DRV_HANDLE myUSARTHandle; //Handle USART DRIVER
DRV_USART_BUFFER_HANDLE usartBufferHandleTX;
DRV_USART_BUFFER_HANDLE usartBufferHandleRX;
unsigned int tx = 0;// Tells if a Transmission is in course
DRV_USART_BUFFER_EVENT event;
uint8_t bfTX[5] = {'a','b','c','d','e'}; //TX Buffer
uint8_t bfRX[5] = {0}; //RX Buffer
bool switchSamples[5] = {false}; //Array used to debounce the key


void APP_Initialize ( void )
{    
    myUSARTHandle = DRV_USART_Open(DRV_USART_INDEX_0, DRV_IO_INTENT_READWRITE); //Open USART DRIVER
    uint ctxt1 = 1;
    DRV_USART_BufferEventHandlerSet(myUSARTHandle, APP_USARTBufferEventHandler, ctxt1);    
    TMR1_CallbackRegister(TIMER1_EventHandler,(uintptr_t)NULL);
    TMR1_Start();


    appData.state = APP_STATE_INIT;    
}
    

void APP_Tasks ( void )
{
    switch ( appData.state )
    {       
        case APP_STATE_INIT:
        {
            bool appInitialized = true;


            if (appInitialized)
            {
                DRV_USART_ReadBufferAdd(myUSARTHandle,bfRX,3,&usartBufferHandleRX);
                if(usartBufferHandleRX == DRV_USART_BUFFER_HANDLE_INVALID)
                    //ERROR
                {
                    LED_D8__Clear();
                    LED_D9__Clear();                    
                    while(true);                    
                } 
                appData.state = APP_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_STATE_SERVICE_TASKS:
        {
            if(TakeSwitchStateS3())
            {
//                DRV_USART_WriteBufferAdd(myUSARTHandle,bf,5,&usartBufferHandle); //Transmite e verifica final de transmissão por pooling
//                while ((event = DRV_USART_BufferStatusGet(usartBufferHandle)) == DRV_USART_BUFFER_EVENT_PENDING);

                if(!tx)                    
                {
                    tx = 1;
                    bfTX[0] = '#'; //Update Package to inform a Press event
                    bfTX[1] = 'P';
                    bfTX[2] = '$';
                    DRV_USART_WriteBufferAdd(myUSARTHandle,bfTX,3,&usartBufferHandleTX);                      
                    if(usartBufferHandleTX == DRV_USART_BUFFER_HANDLE_INVALID)
                    {
                        LED_D8__Clear();
                        LED_D9__Clear();
                        tx = 0;
                        while(true);                    
                    }                    
                }
            }            
            else
            //Garante que temos que soltar o botão para que um novo pacote seja transmitido
            {   
                if(tx==2)
                //The Package associated with button pressed event have already been transmitted 
                {
                    bfTX[0] = '#';//Update Package to inform a Release event
                    bfTX[1] = 'R';
                    bfTX[2] = '$';
                            
                    DRV_USART_WriteBufferAdd(myUSARTHandle,bfTX,3,&usartBufferHandleTX);
                    if(usartBufferHandleTX == DRV_USART_BUFFER_HANDLE_INVALID)
                    {
                        LED_D8__Clear();
                        LED_D9__Clear();
                        tx = 0;
                        while(true);                    
                    }                                        
                }
            }

            break;
        }

        /* TODO: implement your application state machine.*/


        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}


void APP_USARTBufferEventHandler(   DRV_USART_BUFFER_EVENT event,
                                    DRV_USART_BUFFER_HANDLE handle,
                                    uintptr_t context
                                )
{
    // The context handle was set to an application specific
    // object. It is now retrievable easily in the event handler.    
    uint ct = context;
    static uint8_t txtmp = 0;
    
    if(handle == usartBufferHandleTX)
    {
        switch(event)
        {
            case DRV_USART_BUFFER_EVENT_COMPLETE:
            {
                // This means the data was transferred.
                if(tx==1)
                    tx = 2;
                else if(tx==2)
                //The release button was transmitted
                {
                    tx = 0;
                }
                else if(tx == 10)
                //We have transmitted the status, so come back to anterior status    
                {
                    tx = txtmp;
                }
                    
                break;
            }


            case DRV_USART_BUFFER_EVENT_ERROR:
            {            
                // Error handling here.
                Nop();
                break;
            }


            default:
            {
                Nop();
                break;
            }
        }
    }
    if(handle == usartBufferHandleRX)
    {
        if(event == DRV_USART_BUFFER_EVENT_COMPLETE)
        {
            if(bfRX[0] == '#' && bfRX[1] == '8' && bfRX[2] == '$')
            {
                LED_D8__Toggle();
            }
            else if(bfRX[0] == '#' && bfRX[1] == '9' && bfRX[2] == '$')
            {
                LED_D9__Toggle();
            }
            else if(bfRX[0] == '#' && bfRX[1] == 'S' && bfRX[2] == '$')
            {
                bfTX[0] = '#';//Update Package to inform a Release event                
                bfTX[1] = 0;
                bfTX[2] = '$';
                
                if(TakeSwitchStateS3())
                {
                    bfTX[1] |= 0b00000100; 
                }
                if(LED_D8__Get())
                {
                    bfTX[1] |= 0b00000001; 
                }
                if(LED_D9__Get())
                {
                    bfTX[1] |= 0b00000010; 
                }                
                txtmp = tx;
                tx = 10;
                            
                    DRV_USART_WriteBufferAdd(myUSARTHandle,bfTX,3,&usartBufferHandleTX);
                    if(usartBufferHandleTX == DRV_USART_BUFFER_HANDLE_INVALID)
                    {
                        LED_D8__Clear();
                        LED_D9__Clear();
                        tx = 0;
                        while(true);                    
                    }                                        
            }
            DRV_USART_ReadBufferAdd(myUSARTHandle,bfRX,3,&usartBufferHandleRX);
        }
    }
}
void TIMER1_EventHandler(uintptr_t context)
/*1ms Period Event*/
{
    static uint32_t heartBeat = 0;
    static uint32_t sampleSwitch = 0;
    
    if(!heartBeat)    
        LED_D7__Toggle();
    heartBeat = (++heartBeat) % 1000; 
    
    if(!sampleSwitch)        
    {
        static int countSample = 0;
        
        switchSamples[countSample] = SWITCH_S3__Get();
        countSample = (++countSample) % 5; //Sample switch in 50ms period        
    }
    sampleSwitch = (++sampleSwitch) % 25; //Sample switch in 25ms period       
}

bool TakeSwitchStateS3()
{
    static bool lastState = false;
    
    if(lastState == false && switchSamples[0] == true && switchSamples[1] == true
       && switchSamples[2] == true && switchSamples[3] == true && switchSamples[4] == true)    
        lastState = true;
    else if(lastState == true && switchSamples[0] == false && switchSamples[1] == false
            && switchSamples[2] == false && switchSamples[3] == false && switchSamples[4] == false)
        lastState = false;
    
    return !lastState;    
}

/*******************************************************************************
 End of File
 */
