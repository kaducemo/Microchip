#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-PIC32MX570F512L.mk)" "nbproject/Makefile-local-PIC32MX570F512L.mk"
include nbproject/Makefile-local-PIC32MX570F512L.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=PIC32MX570F512L
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TesteHarmonyV3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TesteHarmonyV3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/PIC32MX570F512L/peripheral/uart/plib_uart2.c ../src/config/PIC32MX570F512L/driver/usart/src/drv_usart.c ../src/main.c ../src/config/PIC32MX570F512L/initialization.c ../src/config/PIC32MX570F512L/interrupts.c ../src/config/PIC32MX570F512L/exceptions.c ../src/config/PIC32MX570F512L/stdio/xc32_monitor.c ../src/config/PIC32MX570F512L/peripheral/clk/plib_clk.c ../src/config/PIC32MX570F512L/peripheral/gpio/plib_gpio.c ../src/config/PIC32MX570F512L/peripheral/evic/plib_evic.c ../src/config/PIC32MX570F512L/peripheral/tmr1/plib_tmr1.c ../src/config/PIC32MX570F512L/system/int/src/sys_int.c ../src/config/PIC32MX570F512L/system/dma/sys_dma.c ../src/app.c ../src/config/PIC32MX570F512L/tasks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2115439809/plib_uart2.o ${OBJECTDIR}/_ext/1716479885/drv_usart.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1647817649/initialization.o ${OBJECTDIR}/_ext/1647817649/interrupts.o ${OBJECTDIR}/_ext/1647817649/exceptions.o ${OBJECTDIR}/_ext/724183241/xc32_monitor.o ${OBJECTDIR}/_ext/1038054351/plib_clk.o ${OBJECTDIR}/_ext/2115036866/plib_gpio.o ${OBJECTDIR}/_ext/2114983038/plib_evic.o ${OBJECTDIR}/_ext/2115421483/plib_tmr1.o ${OBJECTDIR}/_ext/1435410012/sys_int.o ${OBJECTDIR}/_ext/241152728/sys_dma.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1647817649/tasks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2115439809/plib_uart2.o.d ${OBJECTDIR}/_ext/1716479885/drv_usart.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1647817649/initialization.o.d ${OBJECTDIR}/_ext/1647817649/interrupts.o.d ${OBJECTDIR}/_ext/1647817649/exceptions.o.d ${OBJECTDIR}/_ext/724183241/xc32_monitor.o.d ${OBJECTDIR}/_ext/1038054351/plib_clk.o.d ${OBJECTDIR}/_ext/2115036866/plib_gpio.o.d ${OBJECTDIR}/_ext/2114983038/plib_evic.o.d ${OBJECTDIR}/_ext/2115421483/plib_tmr1.o.d ${OBJECTDIR}/_ext/1435410012/sys_int.o.d ${OBJECTDIR}/_ext/241152728/sys_dma.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1647817649/tasks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2115439809/plib_uart2.o ${OBJECTDIR}/_ext/1716479885/drv_usart.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1647817649/initialization.o ${OBJECTDIR}/_ext/1647817649/interrupts.o ${OBJECTDIR}/_ext/1647817649/exceptions.o ${OBJECTDIR}/_ext/724183241/xc32_monitor.o ${OBJECTDIR}/_ext/1038054351/plib_clk.o ${OBJECTDIR}/_ext/2115036866/plib_gpio.o ${OBJECTDIR}/_ext/2114983038/plib_evic.o ${OBJECTDIR}/_ext/2115421483/plib_tmr1.o ${OBJECTDIR}/_ext/1435410012/sys_int.o ${OBJECTDIR}/_ext/241152728/sys_dma.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1647817649/tasks.o

# Source Files
SOURCEFILES=../src/config/PIC32MX570F512L/peripheral/uart/plib_uart2.c ../src/config/PIC32MX570F512L/driver/usart/src/drv_usart.c ../src/main.c ../src/config/PIC32MX570F512L/initialization.c ../src/config/PIC32MX570F512L/interrupts.c ../src/config/PIC32MX570F512L/exceptions.c ../src/config/PIC32MX570F512L/stdio/xc32_monitor.c ../src/config/PIC32MX570F512L/peripheral/clk/plib_clk.c ../src/config/PIC32MX570F512L/peripheral/gpio/plib_gpio.c ../src/config/PIC32MX570F512L/peripheral/evic/plib_evic.c ../src/config/PIC32MX570F512L/peripheral/tmr1/plib_tmr1.c ../src/config/PIC32MX570F512L/system/int/src/sys_int.c ../src/config/PIC32MX570F512L/system/dma/sys_dma.c ../src/app.c ../src/config/PIC32MX570F512L/tasks.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-PIC32MX570F512L.mk dist/${CND_CONF}/${IMAGE_TYPE}/TesteHarmonyV3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX570F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2115439809/plib_uart2.o: ../src/config/PIC32MX570F512L/peripheral/uart/plib_uart2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2115439809" 
	@${RM} ${OBJECTDIR}/_ext/2115439809/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/2115439809/plib_uart2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2115439809/plib_uart2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/2115439809/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/2115439809/plib_uart2.o ../src/config/PIC32MX570F512L/peripheral/uart/plib_uart2.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1716479885/drv_usart.o: ../src/config/PIC32MX570F512L/driver/usart/src/drv_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1716479885" 
	@${RM} ${OBJECTDIR}/_ext/1716479885/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1716479885/drv_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1716479885/drv_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1716479885/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1716479885/drv_usart.o ../src/config/PIC32MX570F512L/driver/usart/src/drv_usart.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1647817649/initialization.o: ../src/config/PIC32MX570F512L/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1647817649" 
	@${RM} ${OBJECTDIR}/_ext/1647817649/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1647817649/initialization.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1647817649/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1647817649/initialization.o.d" -o ${OBJECTDIR}/_ext/1647817649/initialization.o ../src/config/PIC32MX570F512L/initialization.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1647817649/interrupts.o: ../src/config/PIC32MX570F512L/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1647817649" 
	@${RM} ${OBJECTDIR}/_ext/1647817649/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1647817649/interrupts.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1647817649/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1647817649/interrupts.o.d" -o ${OBJECTDIR}/_ext/1647817649/interrupts.o ../src/config/PIC32MX570F512L/interrupts.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1647817649/exceptions.o: ../src/config/PIC32MX570F512L/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1647817649" 
	@${RM} ${OBJECTDIR}/_ext/1647817649/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1647817649/exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1647817649/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1647817649/exceptions.o.d" -o ${OBJECTDIR}/_ext/1647817649/exceptions.o ../src/config/PIC32MX570F512L/exceptions.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/724183241/xc32_monitor.o: ../src/config/PIC32MX570F512L/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/724183241" 
	@${RM} ${OBJECTDIR}/_ext/724183241/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/724183241/xc32_monitor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/724183241/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/724183241/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/724183241/xc32_monitor.o ../src/config/PIC32MX570F512L/stdio/xc32_monitor.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1038054351/plib_clk.o: ../src/config/PIC32MX570F512L/peripheral/clk/plib_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1038054351" 
	@${RM} ${OBJECTDIR}/_ext/1038054351/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1038054351/plib_clk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1038054351/plib_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1038054351/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1038054351/plib_clk.o ../src/config/PIC32MX570F512L/peripheral/clk/plib_clk.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2115036866/plib_gpio.o: ../src/config/PIC32MX570F512L/peripheral/gpio/plib_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2115036866" 
	@${RM} ${OBJECTDIR}/_ext/2115036866/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2115036866/plib_gpio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2115036866/plib_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/2115036866/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/2115036866/plib_gpio.o ../src/config/PIC32MX570F512L/peripheral/gpio/plib_gpio.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2114983038/plib_evic.o: ../src/config/PIC32MX570F512L/peripheral/evic/plib_evic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2114983038" 
	@${RM} ${OBJECTDIR}/_ext/2114983038/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2114983038/plib_evic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2114983038/plib_evic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/2114983038/plib_evic.o.d" -o ${OBJECTDIR}/_ext/2114983038/plib_evic.o ../src/config/PIC32MX570F512L/peripheral/evic/plib_evic.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2115421483/plib_tmr1.o: ../src/config/PIC32MX570F512L/peripheral/tmr1/plib_tmr1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2115421483" 
	@${RM} ${OBJECTDIR}/_ext/2115421483/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2115421483/plib_tmr1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2115421483/plib_tmr1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/2115421483/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/2115421483/plib_tmr1.o ../src/config/PIC32MX570F512L/peripheral/tmr1/plib_tmr1.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1435410012/sys_int.o: ../src/config/PIC32MX570F512L/system/int/src/sys_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435410012" 
	@${RM} ${OBJECTDIR}/_ext/1435410012/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435410012/sys_int.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435410012/sys_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1435410012/sys_int.o.d" -o ${OBJECTDIR}/_ext/1435410012/sys_int.o ../src/config/PIC32MX570F512L/system/int/src/sys_int.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/241152728/sys_dma.o: ../src/config/PIC32MX570F512L/system/dma/sys_dma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/241152728" 
	@${RM} ${OBJECTDIR}/_ext/241152728/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/241152728/sys_dma.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/241152728/sys_dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/241152728/sys_dma.o.d" -o ${OBJECTDIR}/_ext/241152728/sys_dma.o ../src/config/PIC32MX570F512L/system/dma/sys_dma.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1647817649/tasks.o: ../src/config/PIC32MX570F512L/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1647817649" 
	@${RM} ${OBJECTDIR}/_ext/1647817649/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1647817649/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1647817649/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1647817649/tasks.o.d" -o ${OBJECTDIR}/_ext/1647817649/tasks.o ../src/config/PIC32MX570F512L/tasks.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
else
${OBJECTDIR}/_ext/2115439809/plib_uart2.o: ../src/config/PIC32MX570F512L/peripheral/uart/plib_uart2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2115439809" 
	@${RM} ${OBJECTDIR}/_ext/2115439809/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/2115439809/plib_uart2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2115439809/plib_uart2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/2115439809/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/2115439809/plib_uart2.o ../src/config/PIC32MX570F512L/peripheral/uart/plib_uart2.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1716479885/drv_usart.o: ../src/config/PIC32MX570F512L/driver/usart/src/drv_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1716479885" 
	@${RM} ${OBJECTDIR}/_ext/1716479885/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1716479885/drv_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1716479885/drv_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1716479885/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1716479885/drv_usart.o ../src/config/PIC32MX570F512L/driver/usart/src/drv_usart.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1647817649/initialization.o: ../src/config/PIC32MX570F512L/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1647817649" 
	@${RM} ${OBJECTDIR}/_ext/1647817649/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1647817649/initialization.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1647817649/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1647817649/initialization.o.d" -o ${OBJECTDIR}/_ext/1647817649/initialization.o ../src/config/PIC32MX570F512L/initialization.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1647817649/interrupts.o: ../src/config/PIC32MX570F512L/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1647817649" 
	@${RM} ${OBJECTDIR}/_ext/1647817649/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1647817649/interrupts.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1647817649/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1647817649/interrupts.o.d" -o ${OBJECTDIR}/_ext/1647817649/interrupts.o ../src/config/PIC32MX570F512L/interrupts.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1647817649/exceptions.o: ../src/config/PIC32MX570F512L/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1647817649" 
	@${RM} ${OBJECTDIR}/_ext/1647817649/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1647817649/exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1647817649/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1647817649/exceptions.o.d" -o ${OBJECTDIR}/_ext/1647817649/exceptions.o ../src/config/PIC32MX570F512L/exceptions.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/724183241/xc32_monitor.o: ../src/config/PIC32MX570F512L/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/724183241" 
	@${RM} ${OBJECTDIR}/_ext/724183241/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/724183241/xc32_monitor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/724183241/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/724183241/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/724183241/xc32_monitor.o ../src/config/PIC32MX570F512L/stdio/xc32_monitor.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1038054351/plib_clk.o: ../src/config/PIC32MX570F512L/peripheral/clk/plib_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1038054351" 
	@${RM} ${OBJECTDIR}/_ext/1038054351/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1038054351/plib_clk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1038054351/plib_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1038054351/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1038054351/plib_clk.o ../src/config/PIC32MX570F512L/peripheral/clk/plib_clk.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2115036866/plib_gpio.o: ../src/config/PIC32MX570F512L/peripheral/gpio/plib_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2115036866" 
	@${RM} ${OBJECTDIR}/_ext/2115036866/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2115036866/plib_gpio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2115036866/plib_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/2115036866/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/2115036866/plib_gpio.o ../src/config/PIC32MX570F512L/peripheral/gpio/plib_gpio.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2114983038/plib_evic.o: ../src/config/PIC32MX570F512L/peripheral/evic/plib_evic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2114983038" 
	@${RM} ${OBJECTDIR}/_ext/2114983038/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2114983038/plib_evic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2114983038/plib_evic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/2114983038/plib_evic.o.d" -o ${OBJECTDIR}/_ext/2114983038/plib_evic.o ../src/config/PIC32MX570F512L/peripheral/evic/plib_evic.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2115421483/plib_tmr1.o: ../src/config/PIC32MX570F512L/peripheral/tmr1/plib_tmr1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2115421483" 
	@${RM} ${OBJECTDIR}/_ext/2115421483/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2115421483/plib_tmr1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2115421483/plib_tmr1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/2115421483/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/2115421483/plib_tmr1.o ../src/config/PIC32MX570F512L/peripheral/tmr1/plib_tmr1.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1435410012/sys_int.o: ../src/config/PIC32MX570F512L/system/int/src/sys_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435410012" 
	@${RM} ${OBJECTDIR}/_ext/1435410012/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435410012/sys_int.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435410012/sys_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1435410012/sys_int.o.d" -o ${OBJECTDIR}/_ext/1435410012/sys_int.o ../src/config/PIC32MX570F512L/system/int/src/sys_int.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/241152728/sys_dma.o: ../src/config/PIC32MX570F512L/system/dma/sys_dma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/241152728" 
	@${RM} ${OBJECTDIR}/_ext/241152728/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/241152728/sys_dma.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/241152728/sys_dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/241152728/sys_dma.o.d" -o ${OBJECTDIR}/_ext/241152728/sys_dma.o ../src/config/PIC32MX570F512L/system/dma/sys_dma.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1647817649/tasks.o: ../src/config/PIC32MX570F512L/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1647817649" 
	@${RM} ${OBJECTDIR}/_ext/1647817649/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1647817649/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1647817649/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/PIC32MX570F512L" -I"../src/packs/PIC32MX570F512L_DFP" -I"../src/mips" -Wall -MMD -MF "${OBJECTDIR}/_ext/1647817649/tasks.o.d" -o ${OBJECTDIR}/_ext/1647817649/tasks.o ../src/config/PIC32MX570F512L/tasks.c    -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/TesteHarmonyV3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/TesteHarmonyV3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp=${DFP_DIR}
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/TesteHarmonyV3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/TesteHarmonyV3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_PIC32MX570F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp=${DFP_DIR}
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/TesteHarmonyV3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/PIC32MX570F512L
	${RM} -r dist/PIC32MX570F512L

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
