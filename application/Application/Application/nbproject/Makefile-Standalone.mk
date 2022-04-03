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
ifeq "$(wildcard nbproject/Makefile-local-Standalone.mk)" "nbproject/Makefile-local-Standalone.mk"
include nbproject/Makefile-local-Standalone.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Standalone
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Application.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Application.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
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
SOURCEFILES_QUOTED_IF_SPACED=../../MercuryFwk/Source/c/00_Main/main.c ../../MercuryFwk/Source/c/01_Hal/01_Sys/irq.c ../../MercuryFwk/Source/c/01_Hal/01_Sys/sys_init.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/i2c_drv.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/mcu_drv.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_bt_drv.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_drv.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_wifi_drv.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/pm_drv.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/rtcc_drv.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/tmr_drv.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/uart_drv.c ../../MercuryFwk/Source/c/02_Osl/os_alarms.c ../../MercuryFwk/Source/c/02_Osl/os_sched.c ../../MercuryFwk/Source/c/02_Osl/os_sched_tbl.c ../../MercuryFwk/Source/c/02_Osl/os_ser.c ../../MercuryFwk/Source/c/02_Osl/os_timers.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_bt.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_bt_cmd.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_gsm_gprs.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_gsm_gprs_http.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi_cmd.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi_http.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/02_SlvI2c/i2c_slv.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/hid_devices.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/hid_report.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_descriptors.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_cdc.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_hid.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_mgr.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/05_Eeprom/eeprom_if.c ../../MercuryFwk/Source/c/03_Sml/02_Ssl/ext_int.c ../../MercuryFwk/Source/c/03_Sml/02_Ssl/led.c ../../MercuryFwk/Source/c/03_Sml/02_Ssl/rtcm.c ../../MercuryFwk/Source/c/03_Sml/02_Ssl/sf.c ../../MercuryFwk/Source/c/03_Sml/02_Ssl/sysm.c ../../MercuryFwk/Source/c/03_Sml/02_Ssl/term.c ../../MercuryFwk/Source/c/03_Sml/02_Ssl/wdg.c ../Source/c/04_App/app_main.c ../Source/c/04_App/cmd_add.c ../Source/c/04_App/cmd_del.c ../Source/c/04_App/cmd_init.c ../Source/c/04_App/cmd_res.c ../Source/c/04_App/cmd_trigger.c ../Source/c/04_App/utils.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1796901856/main.p1 ${OBJECTDIR}/_ext/1161762993/irq.p1 ${OBJECTDIR}/_ext/1161762993/sys_init.p1 ${OBJECTDIR}/_ext/1162671885/i2c_drv.p1 ${OBJECTDIR}/_ext/1162671885/mcu_drv.p1 ${OBJECTDIR}/_ext/1162671885/mdm_bt_drv.p1 ${OBJECTDIR}/_ext/1162671885/mdm_drv.p1 ${OBJECTDIR}/_ext/1162671885/mdm_wifi_drv.p1 ${OBJECTDIR}/_ext/1162671885/pm_drv.p1 ${OBJECTDIR}/_ext/1162671885/rtcc_drv.p1 ${OBJECTDIR}/_ext/1162671885/tmr_drv.p1 ${OBJECTDIR}/_ext/1162671885/uart_drv.p1 ${OBJECTDIR}/_ext/1722382083/os_alarms.p1 ${OBJECTDIR}/_ext/1722382083/os_sched.p1 ${OBJECTDIR}/_ext/1722382083/os_sched_tbl.p1 ${OBJECTDIR}/_ext/1722382083/os_ser.p1 ${OBJECTDIR}/_ext/1722382083/os_timers.p1 ${OBJECTDIR}/_ext/504380405/mdm_bt.p1 ${OBJECTDIR}/_ext/504380405/mdm_bt_cmd.p1 ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs.p1 ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs_http.p1 ${OBJECTDIR}/_ext/504380405/mdm_wifi.p1 ${OBJECTDIR}/_ext/504380405/mdm_wifi_cmd.p1 ${OBJECTDIR}/_ext/504380405/mdm_wifi_http.p1 ${OBJECTDIR}/_ext/171610019/i2c_slv.p1 ${OBJECTDIR}/_ext/507159110/hid_devices.p1 ${OBJECTDIR}/_ext/507159110/hid_report.p1 ${OBJECTDIR}/_ext/507159110/usb_descriptors.p1 ${OBJECTDIR}/_ext/507159110/usb_device.p1 ${OBJECTDIR}/_ext/507159110/usb_device_cdc.p1 ${OBJECTDIR}/_ext/507159110/usb_device_hid.p1 ${OBJECTDIR}/_ext/507159110/usb_device_mgr.p1 ${OBJECTDIR}/_ext/354443485/eeprom_if.p1 ${OBJECTDIR}/_ext/955413872/ext_int.p1 ${OBJECTDIR}/_ext/955413872/led.p1 ${OBJECTDIR}/_ext/955413872/rtcm.p1 ${OBJECTDIR}/_ext/955413872/sf.p1 ${OBJECTDIR}/_ext/955413872/sysm.p1 ${OBJECTDIR}/_ext/955413872/term.p1 ${OBJECTDIR}/_ext/955413872/wdg.p1 ${OBJECTDIR}/_ext/538292599/app_main.p1 ${OBJECTDIR}/_ext/538292599/cmd_add.p1 ${OBJECTDIR}/_ext/538292599/cmd_del.p1 ${OBJECTDIR}/_ext/538292599/cmd_init.p1 ${OBJECTDIR}/_ext/538292599/cmd_res.p1 ${OBJECTDIR}/_ext/538292599/cmd_trigger.p1 ${OBJECTDIR}/_ext/538292599/utils.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1796901856/main.p1.d ${OBJECTDIR}/_ext/1161762993/irq.p1.d ${OBJECTDIR}/_ext/1161762993/sys_init.p1.d ${OBJECTDIR}/_ext/1162671885/i2c_drv.p1.d ${OBJECTDIR}/_ext/1162671885/mcu_drv.p1.d ${OBJECTDIR}/_ext/1162671885/mdm_bt_drv.p1.d ${OBJECTDIR}/_ext/1162671885/mdm_drv.p1.d ${OBJECTDIR}/_ext/1162671885/mdm_wifi_drv.p1.d ${OBJECTDIR}/_ext/1162671885/pm_drv.p1.d ${OBJECTDIR}/_ext/1162671885/rtcc_drv.p1.d ${OBJECTDIR}/_ext/1162671885/tmr_drv.p1.d ${OBJECTDIR}/_ext/1162671885/uart_drv.p1.d ${OBJECTDIR}/_ext/1722382083/os_alarms.p1.d ${OBJECTDIR}/_ext/1722382083/os_sched.p1.d ${OBJECTDIR}/_ext/1722382083/os_sched_tbl.p1.d ${OBJECTDIR}/_ext/1722382083/os_ser.p1.d ${OBJECTDIR}/_ext/1722382083/os_timers.p1.d ${OBJECTDIR}/_ext/504380405/mdm_bt.p1.d ${OBJECTDIR}/_ext/504380405/mdm_bt_cmd.p1.d ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs.p1.d ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs_http.p1.d ${OBJECTDIR}/_ext/504380405/mdm_wifi.p1.d ${OBJECTDIR}/_ext/504380405/mdm_wifi_cmd.p1.d ${OBJECTDIR}/_ext/504380405/mdm_wifi_http.p1.d ${OBJECTDIR}/_ext/171610019/i2c_slv.p1.d ${OBJECTDIR}/_ext/507159110/hid_devices.p1.d ${OBJECTDIR}/_ext/507159110/hid_report.p1.d ${OBJECTDIR}/_ext/507159110/usb_descriptors.p1.d ${OBJECTDIR}/_ext/507159110/usb_device.p1.d ${OBJECTDIR}/_ext/507159110/usb_device_cdc.p1.d ${OBJECTDIR}/_ext/507159110/usb_device_hid.p1.d ${OBJECTDIR}/_ext/507159110/usb_device_mgr.p1.d ${OBJECTDIR}/_ext/354443485/eeprom_if.p1.d ${OBJECTDIR}/_ext/955413872/ext_int.p1.d ${OBJECTDIR}/_ext/955413872/led.p1.d ${OBJECTDIR}/_ext/955413872/rtcm.p1.d ${OBJECTDIR}/_ext/955413872/sf.p1.d ${OBJECTDIR}/_ext/955413872/sysm.p1.d ${OBJECTDIR}/_ext/955413872/term.p1.d ${OBJECTDIR}/_ext/955413872/wdg.p1.d ${OBJECTDIR}/_ext/538292599/app_main.p1.d ${OBJECTDIR}/_ext/538292599/cmd_add.p1.d ${OBJECTDIR}/_ext/538292599/cmd_del.p1.d ${OBJECTDIR}/_ext/538292599/cmd_init.p1.d ${OBJECTDIR}/_ext/538292599/cmd_res.p1.d ${OBJECTDIR}/_ext/538292599/cmd_trigger.p1.d ${OBJECTDIR}/_ext/538292599/utils.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1796901856/main.p1 ${OBJECTDIR}/_ext/1161762993/irq.p1 ${OBJECTDIR}/_ext/1161762993/sys_init.p1 ${OBJECTDIR}/_ext/1162671885/i2c_drv.p1 ${OBJECTDIR}/_ext/1162671885/mcu_drv.p1 ${OBJECTDIR}/_ext/1162671885/mdm_bt_drv.p1 ${OBJECTDIR}/_ext/1162671885/mdm_drv.p1 ${OBJECTDIR}/_ext/1162671885/mdm_wifi_drv.p1 ${OBJECTDIR}/_ext/1162671885/pm_drv.p1 ${OBJECTDIR}/_ext/1162671885/rtcc_drv.p1 ${OBJECTDIR}/_ext/1162671885/tmr_drv.p1 ${OBJECTDIR}/_ext/1162671885/uart_drv.p1 ${OBJECTDIR}/_ext/1722382083/os_alarms.p1 ${OBJECTDIR}/_ext/1722382083/os_sched.p1 ${OBJECTDIR}/_ext/1722382083/os_sched_tbl.p1 ${OBJECTDIR}/_ext/1722382083/os_ser.p1 ${OBJECTDIR}/_ext/1722382083/os_timers.p1 ${OBJECTDIR}/_ext/504380405/mdm_bt.p1 ${OBJECTDIR}/_ext/504380405/mdm_bt_cmd.p1 ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs.p1 ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs_http.p1 ${OBJECTDIR}/_ext/504380405/mdm_wifi.p1 ${OBJECTDIR}/_ext/504380405/mdm_wifi_cmd.p1 ${OBJECTDIR}/_ext/504380405/mdm_wifi_http.p1 ${OBJECTDIR}/_ext/171610019/i2c_slv.p1 ${OBJECTDIR}/_ext/507159110/hid_devices.p1 ${OBJECTDIR}/_ext/507159110/hid_report.p1 ${OBJECTDIR}/_ext/507159110/usb_descriptors.p1 ${OBJECTDIR}/_ext/507159110/usb_device.p1 ${OBJECTDIR}/_ext/507159110/usb_device_cdc.p1 ${OBJECTDIR}/_ext/507159110/usb_device_hid.p1 ${OBJECTDIR}/_ext/507159110/usb_device_mgr.p1 ${OBJECTDIR}/_ext/354443485/eeprom_if.p1 ${OBJECTDIR}/_ext/955413872/ext_int.p1 ${OBJECTDIR}/_ext/955413872/led.p1 ${OBJECTDIR}/_ext/955413872/rtcm.p1 ${OBJECTDIR}/_ext/955413872/sf.p1 ${OBJECTDIR}/_ext/955413872/sysm.p1 ${OBJECTDIR}/_ext/955413872/term.p1 ${OBJECTDIR}/_ext/955413872/wdg.p1 ${OBJECTDIR}/_ext/538292599/app_main.p1 ${OBJECTDIR}/_ext/538292599/cmd_add.p1 ${OBJECTDIR}/_ext/538292599/cmd_del.p1 ${OBJECTDIR}/_ext/538292599/cmd_init.p1 ${OBJECTDIR}/_ext/538292599/cmd_res.p1 ${OBJECTDIR}/_ext/538292599/cmd_trigger.p1 ${OBJECTDIR}/_ext/538292599/utils.p1

# Source Files
SOURCEFILES=../../MercuryFwk/Source/c/00_Main/main.c ../../MercuryFwk/Source/c/01_Hal/01_Sys/irq.c ../../MercuryFwk/Source/c/01_Hal/01_Sys/sys_init.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/i2c_drv.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/mcu_drv.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_bt_drv.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_drv.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_wifi_drv.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/pm_drv.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/rtcc_drv.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/tmr_drv.c ../../MercuryFwk/Source/c/01_Hal/02_Drv/uart_drv.c ../../MercuryFwk/Source/c/02_Osl/os_alarms.c ../../MercuryFwk/Source/c/02_Osl/os_sched.c ../../MercuryFwk/Source/c/02_Osl/os_sched_tbl.c ../../MercuryFwk/Source/c/02_Osl/os_ser.c ../../MercuryFwk/Source/c/02_Osl/os_timers.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_bt.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_bt_cmd.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_gsm_gprs.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_gsm_gprs_http.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi_cmd.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi_http.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/02_SlvI2c/i2c_slv.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/hid_devices.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/hid_report.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_descriptors.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_cdc.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_hid.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_mgr.c ../../MercuryFwk/Source/c/03_Sml/01_Pml/05_Eeprom/eeprom_if.c ../../MercuryFwk/Source/c/03_Sml/02_Ssl/ext_int.c ../../MercuryFwk/Source/c/03_Sml/02_Ssl/led.c ../../MercuryFwk/Source/c/03_Sml/02_Ssl/rtcm.c ../../MercuryFwk/Source/c/03_Sml/02_Ssl/sf.c ../../MercuryFwk/Source/c/03_Sml/02_Ssl/sysm.c ../../MercuryFwk/Source/c/03_Sml/02_Ssl/term.c ../../MercuryFwk/Source/c/03_Sml/02_Ssl/wdg.c ../Source/c/04_App/app_main.c ../Source/c/04_App/cmd_add.c ../Source/c/04_App/cmd_del.c ../Source/c/04_App/cmd_init.c ../Source/c/04_App/cmd_res.c ../Source/c/04_App/cmd_trigger.c ../Source/c/04_App/utils.c



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
	${MAKE}  -f nbproject/Makefile-Standalone.mk ${DISTDIR}/Application.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F46J50
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1796901856/main.p1: ../../MercuryFwk/Source/c/00_Main/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1796901856" 
	@${RM} ${OBJECTDIR}/_ext/1796901856/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1796901856/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1796901856/main.p1 ../../MercuryFwk/Source/c/00_Main/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1796901856/main.d ${OBJECTDIR}/_ext/1796901856/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1796901856/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1161762993/irq.p1: ../../MercuryFwk/Source/c/01_Hal/01_Sys/irq.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1161762993" 
	@${RM} ${OBJECTDIR}/_ext/1161762993/irq.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1161762993/irq.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1161762993/irq.p1 ../../MercuryFwk/Source/c/01_Hal/01_Sys/irq.c 
	@-${MV} ${OBJECTDIR}/_ext/1161762993/irq.d ${OBJECTDIR}/_ext/1161762993/irq.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1161762993/irq.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1161762993/sys_init.p1: ../../MercuryFwk/Source/c/01_Hal/01_Sys/sys_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1161762993" 
	@${RM} ${OBJECTDIR}/_ext/1161762993/sys_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1161762993/sys_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1161762993/sys_init.p1 ../../MercuryFwk/Source/c/01_Hal/01_Sys/sys_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1161762993/sys_init.d ${OBJECTDIR}/_ext/1161762993/sys_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1161762993/sys_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/i2c_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/i2c_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/i2c_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/i2c_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/i2c_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/i2c_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/i2c_drv.d ${OBJECTDIR}/_ext/1162671885/i2c_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/i2c_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/mcu_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/mcu_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/mcu_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/mcu_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/mcu_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/mcu_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/mcu_drv.d ${OBJECTDIR}/_ext/1162671885/mcu_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/mcu_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/mdm_bt_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_bt_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/mdm_bt_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/mdm_bt_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/mdm_bt_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_bt_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/mdm_bt_drv.d ${OBJECTDIR}/_ext/1162671885/mdm_bt_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/mdm_bt_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/mdm_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/mdm_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/mdm_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/mdm_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/mdm_drv.d ${OBJECTDIR}/_ext/1162671885/mdm_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/mdm_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/mdm_wifi_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_wifi_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/mdm_wifi_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/mdm_wifi_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/mdm_wifi_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_wifi_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/mdm_wifi_drv.d ${OBJECTDIR}/_ext/1162671885/mdm_wifi_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/mdm_wifi_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/pm_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/pm_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/pm_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/pm_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/pm_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/pm_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/pm_drv.d ${OBJECTDIR}/_ext/1162671885/pm_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/pm_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/rtcc_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/rtcc_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/rtcc_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/rtcc_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/rtcc_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/rtcc_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/rtcc_drv.d ${OBJECTDIR}/_ext/1162671885/rtcc_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/rtcc_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/tmr_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/tmr_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/tmr_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/tmr_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/tmr_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/tmr_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/tmr_drv.d ${OBJECTDIR}/_ext/1162671885/tmr_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/tmr_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/uart_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/uart_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/uart_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/uart_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/uart_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/uart_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/uart_drv.d ${OBJECTDIR}/_ext/1162671885/uart_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/uart_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1722382083/os_alarms.p1: ../../MercuryFwk/Source/c/02_Osl/os_alarms.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1722382083" 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_alarms.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_alarms.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1722382083/os_alarms.p1 ../../MercuryFwk/Source/c/02_Osl/os_alarms.c 
	@-${MV} ${OBJECTDIR}/_ext/1722382083/os_alarms.d ${OBJECTDIR}/_ext/1722382083/os_alarms.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1722382083/os_alarms.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1722382083/os_sched.p1: ../../MercuryFwk/Source/c/02_Osl/os_sched.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1722382083" 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_sched.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_sched.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1722382083/os_sched.p1 ../../MercuryFwk/Source/c/02_Osl/os_sched.c 
	@-${MV} ${OBJECTDIR}/_ext/1722382083/os_sched.d ${OBJECTDIR}/_ext/1722382083/os_sched.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1722382083/os_sched.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1722382083/os_sched_tbl.p1: ../../MercuryFwk/Source/c/02_Osl/os_sched_tbl.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1722382083" 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_sched_tbl.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_sched_tbl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1722382083/os_sched_tbl.p1 ../../MercuryFwk/Source/c/02_Osl/os_sched_tbl.c 
	@-${MV} ${OBJECTDIR}/_ext/1722382083/os_sched_tbl.d ${OBJECTDIR}/_ext/1722382083/os_sched_tbl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1722382083/os_sched_tbl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1722382083/os_ser.p1: ../../MercuryFwk/Source/c/02_Osl/os_ser.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1722382083" 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_ser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_ser.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1722382083/os_ser.p1 ../../MercuryFwk/Source/c/02_Osl/os_ser.c 
	@-${MV} ${OBJECTDIR}/_ext/1722382083/os_ser.d ${OBJECTDIR}/_ext/1722382083/os_ser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1722382083/os_ser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1722382083/os_timers.p1: ../../MercuryFwk/Source/c/02_Osl/os_timers.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1722382083" 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_timers.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_timers.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1722382083/os_timers.p1 ../../MercuryFwk/Source/c/02_Osl/os_timers.c 
	@-${MV} ${OBJECTDIR}/_ext/1722382083/os_timers.d ${OBJECTDIR}/_ext/1722382083/os_timers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1722382083/os_timers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/504380405/mdm_bt.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_bt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/504380405" 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_bt.p1.d 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_bt.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/504380405/mdm_bt.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_bt.c 
	@-${MV} ${OBJECTDIR}/_ext/504380405/mdm_bt.d ${OBJECTDIR}/_ext/504380405/mdm_bt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/504380405/mdm_bt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/504380405/mdm_bt_cmd.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_bt_cmd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/504380405" 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_bt_cmd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_bt_cmd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/504380405/mdm_bt_cmd.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_bt_cmd.c 
	@-${MV} ${OBJECTDIR}/_ext/504380405/mdm_bt_cmd.d ${OBJECTDIR}/_ext/504380405/mdm_bt_cmd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/504380405/mdm_bt_cmd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_gsm_gprs.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/504380405" 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs.p1.d 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_gsm_gprs.c 
	@-${MV} ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs.d ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs_http.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_gsm_gprs_http.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/504380405" 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs_http.p1.d 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs_http.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs_http.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_gsm_gprs_http.c 
	@-${MV} ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs_http.d ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs_http.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs_http.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/504380405/mdm_wifi.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/504380405" 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_wifi.p1.d 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_wifi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/504380405/mdm_wifi.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi.c 
	@-${MV} ${OBJECTDIR}/_ext/504380405/mdm_wifi.d ${OBJECTDIR}/_ext/504380405/mdm_wifi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/504380405/mdm_wifi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/504380405/mdm_wifi_cmd.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi_cmd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/504380405" 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_wifi_cmd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_wifi_cmd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/504380405/mdm_wifi_cmd.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi_cmd.c 
	@-${MV} ${OBJECTDIR}/_ext/504380405/mdm_wifi_cmd.d ${OBJECTDIR}/_ext/504380405/mdm_wifi_cmd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/504380405/mdm_wifi_cmd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/504380405/mdm_wifi_http.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi_http.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/504380405" 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_wifi_http.p1.d 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_wifi_http.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/504380405/mdm_wifi_http.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi_http.c 
	@-${MV} ${OBJECTDIR}/_ext/504380405/mdm_wifi_http.d ${OBJECTDIR}/_ext/504380405/mdm_wifi_http.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/504380405/mdm_wifi_http.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/171610019/i2c_slv.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/02_SlvI2c/i2c_slv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/171610019" 
	@${RM} ${OBJECTDIR}/_ext/171610019/i2c_slv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/171610019/i2c_slv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/171610019/i2c_slv.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/02_SlvI2c/i2c_slv.c 
	@-${MV} ${OBJECTDIR}/_ext/171610019/i2c_slv.d ${OBJECTDIR}/_ext/171610019/i2c_slv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/171610019/i2c_slv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/507159110/hid_devices.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/hid_devices.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/507159110" 
	@${RM} ${OBJECTDIR}/_ext/507159110/hid_devices.p1.d 
	@${RM} ${OBJECTDIR}/_ext/507159110/hid_devices.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/507159110/hid_devices.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/hid_devices.c 
	@-${MV} ${OBJECTDIR}/_ext/507159110/hid_devices.d ${OBJECTDIR}/_ext/507159110/hid_devices.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/507159110/hid_devices.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/507159110/hid_report.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/hid_report.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/507159110" 
	@${RM} ${OBJECTDIR}/_ext/507159110/hid_report.p1.d 
	@${RM} ${OBJECTDIR}/_ext/507159110/hid_report.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/507159110/hid_report.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/hid_report.c 
	@-${MV} ${OBJECTDIR}/_ext/507159110/hid_report.d ${OBJECTDIR}/_ext/507159110/hid_report.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/507159110/hid_report.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/507159110/usb_descriptors.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/507159110" 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_descriptors.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/507159110/usb_descriptors.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/_ext/507159110/usb_descriptors.d ${OBJECTDIR}/_ext/507159110/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/507159110/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/507159110/usb_device.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/507159110" 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_device.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/507159110/usb_device.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device.c 
	@-${MV} ${OBJECTDIR}/_ext/507159110/usb_device.d ${OBJECTDIR}/_ext/507159110/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/507159110/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/507159110/usb_device_cdc.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/507159110" 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_device_cdc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_device_cdc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/507159110/usb_device_cdc.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_cdc.c 
	@-${MV} ${OBJECTDIR}/_ext/507159110/usb_device_cdc.d ${OBJECTDIR}/_ext/507159110/usb_device_cdc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/507159110/usb_device_cdc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/507159110/usb_device_hid.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/507159110" 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_device_hid.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/507159110/usb_device_hid.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/_ext/507159110/usb_device_hid.d ${OBJECTDIR}/_ext/507159110/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/507159110/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/507159110/usb_device_mgr.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_mgr.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/507159110" 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_device_mgr.p1.d 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_device_mgr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/507159110/usb_device_mgr.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_mgr.c 
	@-${MV} ${OBJECTDIR}/_ext/507159110/usb_device_mgr.d ${OBJECTDIR}/_ext/507159110/usb_device_mgr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/507159110/usb_device_mgr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/354443485/eeprom_if.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/05_Eeprom/eeprom_if.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/354443485" 
	@${RM} ${OBJECTDIR}/_ext/354443485/eeprom_if.p1.d 
	@${RM} ${OBJECTDIR}/_ext/354443485/eeprom_if.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/354443485/eeprom_if.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/05_Eeprom/eeprom_if.c 
	@-${MV} ${OBJECTDIR}/_ext/354443485/eeprom_if.d ${OBJECTDIR}/_ext/354443485/eeprom_if.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/354443485/eeprom_if.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/955413872/ext_int.p1: ../../MercuryFwk/Source/c/03_Sml/02_Ssl/ext_int.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/955413872" 
	@${RM} ${OBJECTDIR}/_ext/955413872/ext_int.p1.d 
	@${RM} ${OBJECTDIR}/_ext/955413872/ext_int.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/955413872/ext_int.p1 ../../MercuryFwk/Source/c/03_Sml/02_Ssl/ext_int.c 
	@-${MV} ${OBJECTDIR}/_ext/955413872/ext_int.d ${OBJECTDIR}/_ext/955413872/ext_int.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/955413872/ext_int.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/955413872/led.p1: ../../MercuryFwk/Source/c/03_Sml/02_Ssl/led.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/955413872" 
	@${RM} ${OBJECTDIR}/_ext/955413872/led.p1.d 
	@${RM} ${OBJECTDIR}/_ext/955413872/led.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/955413872/led.p1 ../../MercuryFwk/Source/c/03_Sml/02_Ssl/led.c 
	@-${MV} ${OBJECTDIR}/_ext/955413872/led.d ${OBJECTDIR}/_ext/955413872/led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/955413872/led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/955413872/rtcm.p1: ../../MercuryFwk/Source/c/03_Sml/02_Ssl/rtcm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/955413872" 
	@${RM} ${OBJECTDIR}/_ext/955413872/rtcm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/955413872/rtcm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/955413872/rtcm.p1 ../../MercuryFwk/Source/c/03_Sml/02_Ssl/rtcm.c 
	@-${MV} ${OBJECTDIR}/_ext/955413872/rtcm.d ${OBJECTDIR}/_ext/955413872/rtcm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/955413872/rtcm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/955413872/sf.p1: ../../MercuryFwk/Source/c/03_Sml/02_Ssl/sf.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/955413872" 
	@${RM} ${OBJECTDIR}/_ext/955413872/sf.p1.d 
	@${RM} ${OBJECTDIR}/_ext/955413872/sf.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/955413872/sf.p1 ../../MercuryFwk/Source/c/03_Sml/02_Ssl/sf.c 
	@-${MV} ${OBJECTDIR}/_ext/955413872/sf.d ${OBJECTDIR}/_ext/955413872/sf.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/955413872/sf.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/955413872/sysm.p1: ../../MercuryFwk/Source/c/03_Sml/02_Ssl/sysm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/955413872" 
	@${RM} ${OBJECTDIR}/_ext/955413872/sysm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/955413872/sysm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/955413872/sysm.p1 ../../MercuryFwk/Source/c/03_Sml/02_Ssl/sysm.c 
	@-${MV} ${OBJECTDIR}/_ext/955413872/sysm.d ${OBJECTDIR}/_ext/955413872/sysm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/955413872/sysm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/955413872/term.p1: ../../MercuryFwk/Source/c/03_Sml/02_Ssl/term.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/955413872" 
	@${RM} ${OBJECTDIR}/_ext/955413872/term.p1.d 
	@${RM} ${OBJECTDIR}/_ext/955413872/term.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/955413872/term.p1 ../../MercuryFwk/Source/c/03_Sml/02_Ssl/term.c 
	@-${MV} ${OBJECTDIR}/_ext/955413872/term.d ${OBJECTDIR}/_ext/955413872/term.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/955413872/term.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/955413872/wdg.p1: ../../MercuryFwk/Source/c/03_Sml/02_Ssl/wdg.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/955413872" 
	@${RM} ${OBJECTDIR}/_ext/955413872/wdg.p1.d 
	@${RM} ${OBJECTDIR}/_ext/955413872/wdg.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/955413872/wdg.p1 ../../MercuryFwk/Source/c/03_Sml/02_Ssl/wdg.c 
	@-${MV} ${OBJECTDIR}/_ext/955413872/wdg.d ${OBJECTDIR}/_ext/955413872/wdg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/955413872/wdg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/538292599/app_main.p1: ../Source/c/04_App/app_main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/538292599" 
	@${RM} ${OBJECTDIR}/_ext/538292599/app_main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/538292599/app_main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/538292599/app_main.p1 ../Source/c/04_App/app_main.c 
	@-${MV} ${OBJECTDIR}/_ext/538292599/app_main.d ${OBJECTDIR}/_ext/538292599/app_main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/538292599/app_main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/538292599/cmd_add.p1: ../Source/c/04_App/cmd_add.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/538292599" 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_add.p1.d 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_add.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/538292599/cmd_add.p1 ../Source/c/04_App/cmd_add.c 
	@-${MV} ${OBJECTDIR}/_ext/538292599/cmd_add.d ${OBJECTDIR}/_ext/538292599/cmd_add.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/538292599/cmd_add.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/538292599/cmd_del.p1: ../Source/c/04_App/cmd_del.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/538292599" 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_del.p1.d 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_del.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/538292599/cmd_del.p1 ../Source/c/04_App/cmd_del.c 
	@-${MV} ${OBJECTDIR}/_ext/538292599/cmd_del.d ${OBJECTDIR}/_ext/538292599/cmd_del.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/538292599/cmd_del.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/538292599/cmd_init.p1: ../Source/c/04_App/cmd_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/538292599" 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/538292599/cmd_init.p1 ../Source/c/04_App/cmd_init.c 
	@-${MV} ${OBJECTDIR}/_ext/538292599/cmd_init.d ${OBJECTDIR}/_ext/538292599/cmd_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/538292599/cmd_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/538292599/cmd_res.p1: ../Source/c/04_App/cmd_res.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/538292599" 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_res.p1.d 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_res.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/538292599/cmd_res.p1 ../Source/c/04_App/cmd_res.c 
	@-${MV} ${OBJECTDIR}/_ext/538292599/cmd_res.d ${OBJECTDIR}/_ext/538292599/cmd_res.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/538292599/cmd_res.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/538292599/cmd_trigger.p1: ../Source/c/04_App/cmd_trigger.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/538292599" 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_trigger.p1.d 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_trigger.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/538292599/cmd_trigger.p1 ../Source/c/04_App/cmd_trigger.c 
	@-${MV} ${OBJECTDIR}/_ext/538292599/cmd_trigger.d ${OBJECTDIR}/_ext/538292599/cmd_trigger.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/538292599/cmd_trigger.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/538292599/utils.p1: ../Source/c/04_App/utils.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/538292599" 
	@${RM} ${OBJECTDIR}/_ext/538292599/utils.p1.d 
	@${RM} ${OBJECTDIR}/_ext/538292599/utils.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/538292599/utils.p1 ../Source/c/04_App/utils.c 
	@-${MV} ${OBJECTDIR}/_ext/538292599/utils.d ${OBJECTDIR}/_ext/538292599/utils.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/538292599/utils.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1796901856/main.p1: ../../MercuryFwk/Source/c/00_Main/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1796901856" 
	@${RM} ${OBJECTDIR}/_ext/1796901856/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1796901856/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1796901856/main.p1 ../../MercuryFwk/Source/c/00_Main/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1796901856/main.d ${OBJECTDIR}/_ext/1796901856/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1796901856/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1161762993/irq.p1: ../../MercuryFwk/Source/c/01_Hal/01_Sys/irq.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1161762993" 
	@${RM} ${OBJECTDIR}/_ext/1161762993/irq.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1161762993/irq.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1161762993/irq.p1 ../../MercuryFwk/Source/c/01_Hal/01_Sys/irq.c 
	@-${MV} ${OBJECTDIR}/_ext/1161762993/irq.d ${OBJECTDIR}/_ext/1161762993/irq.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1161762993/irq.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1161762993/sys_init.p1: ../../MercuryFwk/Source/c/01_Hal/01_Sys/sys_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1161762993" 
	@${RM} ${OBJECTDIR}/_ext/1161762993/sys_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1161762993/sys_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1161762993/sys_init.p1 ../../MercuryFwk/Source/c/01_Hal/01_Sys/sys_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1161762993/sys_init.d ${OBJECTDIR}/_ext/1161762993/sys_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1161762993/sys_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/i2c_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/i2c_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/i2c_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/i2c_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/i2c_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/i2c_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/i2c_drv.d ${OBJECTDIR}/_ext/1162671885/i2c_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/i2c_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/mcu_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/mcu_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/mcu_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/mcu_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/mcu_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/mcu_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/mcu_drv.d ${OBJECTDIR}/_ext/1162671885/mcu_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/mcu_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/mdm_bt_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_bt_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/mdm_bt_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/mdm_bt_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/mdm_bt_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_bt_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/mdm_bt_drv.d ${OBJECTDIR}/_ext/1162671885/mdm_bt_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/mdm_bt_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/mdm_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/mdm_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/mdm_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/mdm_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/mdm_drv.d ${OBJECTDIR}/_ext/1162671885/mdm_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/mdm_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/mdm_wifi_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_wifi_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/mdm_wifi_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/mdm_wifi_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/mdm_wifi_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/mdm_wifi_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/mdm_wifi_drv.d ${OBJECTDIR}/_ext/1162671885/mdm_wifi_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/mdm_wifi_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/pm_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/pm_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/pm_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/pm_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/pm_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/pm_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/pm_drv.d ${OBJECTDIR}/_ext/1162671885/pm_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/pm_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/rtcc_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/rtcc_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/rtcc_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/rtcc_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/rtcc_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/rtcc_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/rtcc_drv.d ${OBJECTDIR}/_ext/1162671885/rtcc_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/rtcc_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/tmr_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/tmr_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/tmr_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/tmr_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/tmr_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/tmr_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/tmr_drv.d ${OBJECTDIR}/_ext/1162671885/tmr_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/tmr_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1162671885/uart_drv.p1: ../../MercuryFwk/Source/c/01_Hal/02_Drv/uart_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1162671885" 
	@${RM} ${OBJECTDIR}/_ext/1162671885/uart_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1162671885/uart_drv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1162671885/uart_drv.p1 ../../MercuryFwk/Source/c/01_Hal/02_Drv/uart_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1162671885/uart_drv.d ${OBJECTDIR}/_ext/1162671885/uart_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1162671885/uart_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1722382083/os_alarms.p1: ../../MercuryFwk/Source/c/02_Osl/os_alarms.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1722382083" 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_alarms.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_alarms.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1722382083/os_alarms.p1 ../../MercuryFwk/Source/c/02_Osl/os_alarms.c 
	@-${MV} ${OBJECTDIR}/_ext/1722382083/os_alarms.d ${OBJECTDIR}/_ext/1722382083/os_alarms.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1722382083/os_alarms.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1722382083/os_sched.p1: ../../MercuryFwk/Source/c/02_Osl/os_sched.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1722382083" 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_sched.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_sched.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1722382083/os_sched.p1 ../../MercuryFwk/Source/c/02_Osl/os_sched.c 
	@-${MV} ${OBJECTDIR}/_ext/1722382083/os_sched.d ${OBJECTDIR}/_ext/1722382083/os_sched.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1722382083/os_sched.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1722382083/os_sched_tbl.p1: ../../MercuryFwk/Source/c/02_Osl/os_sched_tbl.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1722382083" 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_sched_tbl.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_sched_tbl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1722382083/os_sched_tbl.p1 ../../MercuryFwk/Source/c/02_Osl/os_sched_tbl.c 
	@-${MV} ${OBJECTDIR}/_ext/1722382083/os_sched_tbl.d ${OBJECTDIR}/_ext/1722382083/os_sched_tbl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1722382083/os_sched_tbl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1722382083/os_ser.p1: ../../MercuryFwk/Source/c/02_Osl/os_ser.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1722382083" 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_ser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_ser.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1722382083/os_ser.p1 ../../MercuryFwk/Source/c/02_Osl/os_ser.c 
	@-${MV} ${OBJECTDIR}/_ext/1722382083/os_ser.d ${OBJECTDIR}/_ext/1722382083/os_ser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1722382083/os_ser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1722382083/os_timers.p1: ../../MercuryFwk/Source/c/02_Osl/os_timers.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1722382083" 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_timers.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1722382083/os_timers.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1722382083/os_timers.p1 ../../MercuryFwk/Source/c/02_Osl/os_timers.c 
	@-${MV} ${OBJECTDIR}/_ext/1722382083/os_timers.d ${OBJECTDIR}/_ext/1722382083/os_timers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1722382083/os_timers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/504380405/mdm_bt.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_bt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/504380405" 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_bt.p1.d 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_bt.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/504380405/mdm_bt.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_bt.c 
	@-${MV} ${OBJECTDIR}/_ext/504380405/mdm_bt.d ${OBJECTDIR}/_ext/504380405/mdm_bt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/504380405/mdm_bt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/504380405/mdm_bt_cmd.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_bt_cmd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/504380405" 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_bt_cmd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_bt_cmd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/504380405/mdm_bt_cmd.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_bt_cmd.c 
	@-${MV} ${OBJECTDIR}/_ext/504380405/mdm_bt_cmd.d ${OBJECTDIR}/_ext/504380405/mdm_bt_cmd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/504380405/mdm_bt_cmd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_gsm_gprs.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/504380405" 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs.p1.d 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_gsm_gprs.c 
	@-${MV} ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs.d ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs_http.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_gsm_gprs_http.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/504380405" 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs_http.p1.d 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs_http.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs_http.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_gsm_gprs_http.c 
	@-${MV} ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs_http.d ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs_http.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/504380405/mdm_gsm_gprs_http.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/504380405/mdm_wifi.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/504380405" 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_wifi.p1.d 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_wifi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/504380405/mdm_wifi.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi.c 
	@-${MV} ${OBJECTDIR}/_ext/504380405/mdm_wifi.d ${OBJECTDIR}/_ext/504380405/mdm_wifi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/504380405/mdm_wifi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/504380405/mdm_wifi_cmd.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi_cmd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/504380405" 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_wifi_cmd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_wifi_cmd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/504380405/mdm_wifi_cmd.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi_cmd.c 
	@-${MV} ${OBJECTDIR}/_ext/504380405/mdm_wifi_cmd.d ${OBJECTDIR}/_ext/504380405/mdm_wifi_cmd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/504380405/mdm_wifi_cmd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/504380405/mdm_wifi_http.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi_http.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/504380405" 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_wifi_http.p1.d 
	@${RM} ${OBJECTDIR}/_ext/504380405/mdm_wifi_http.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/504380405/mdm_wifi_http.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/01_Mdm/mdm_wifi_http.c 
	@-${MV} ${OBJECTDIR}/_ext/504380405/mdm_wifi_http.d ${OBJECTDIR}/_ext/504380405/mdm_wifi_http.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/504380405/mdm_wifi_http.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/171610019/i2c_slv.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/02_SlvI2c/i2c_slv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/171610019" 
	@${RM} ${OBJECTDIR}/_ext/171610019/i2c_slv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/171610019/i2c_slv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/171610019/i2c_slv.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/02_SlvI2c/i2c_slv.c 
	@-${MV} ${OBJECTDIR}/_ext/171610019/i2c_slv.d ${OBJECTDIR}/_ext/171610019/i2c_slv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/171610019/i2c_slv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/507159110/hid_devices.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/hid_devices.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/507159110" 
	@${RM} ${OBJECTDIR}/_ext/507159110/hid_devices.p1.d 
	@${RM} ${OBJECTDIR}/_ext/507159110/hid_devices.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/507159110/hid_devices.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/hid_devices.c 
	@-${MV} ${OBJECTDIR}/_ext/507159110/hid_devices.d ${OBJECTDIR}/_ext/507159110/hid_devices.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/507159110/hid_devices.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/507159110/hid_report.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/hid_report.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/507159110" 
	@${RM} ${OBJECTDIR}/_ext/507159110/hid_report.p1.d 
	@${RM} ${OBJECTDIR}/_ext/507159110/hid_report.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/507159110/hid_report.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/hid_report.c 
	@-${MV} ${OBJECTDIR}/_ext/507159110/hid_report.d ${OBJECTDIR}/_ext/507159110/hid_report.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/507159110/hid_report.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/507159110/usb_descriptors.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/507159110" 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_descriptors.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/507159110/usb_descriptors.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/_ext/507159110/usb_descriptors.d ${OBJECTDIR}/_ext/507159110/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/507159110/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/507159110/usb_device.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/507159110" 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_device.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/507159110/usb_device.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device.c 
	@-${MV} ${OBJECTDIR}/_ext/507159110/usb_device.d ${OBJECTDIR}/_ext/507159110/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/507159110/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/507159110/usb_device_cdc.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/507159110" 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_device_cdc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_device_cdc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/507159110/usb_device_cdc.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_cdc.c 
	@-${MV} ${OBJECTDIR}/_ext/507159110/usb_device_cdc.d ${OBJECTDIR}/_ext/507159110/usb_device_cdc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/507159110/usb_device_cdc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/507159110/usb_device_hid.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/507159110" 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_device_hid.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/507159110/usb_device_hid.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/_ext/507159110/usb_device_hid.d ${OBJECTDIR}/_ext/507159110/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/507159110/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/507159110/usb_device_mgr.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_mgr.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/507159110" 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_device_mgr.p1.d 
	@${RM} ${OBJECTDIR}/_ext/507159110/usb_device_mgr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/507159110/usb_device_mgr.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/04_Usb/usb_device_mgr.c 
	@-${MV} ${OBJECTDIR}/_ext/507159110/usb_device_mgr.d ${OBJECTDIR}/_ext/507159110/usb_device_mgr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/507159110/usb_device_mgr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/354443485/eeprom_if.p1: ../../MercuryFwk/Source/c/03_Sml/01_Pml/05_Eeprom/eeprom_if.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/354443485" 
	@${RM} ${OBJECTDIR}/_ext/354443485/eeprom_if.p1.d 
	@${RM} ${OBJECTDIR}/_ext/354443485/eeprom_if.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/354443485/eeprom_if.p1 ../../MercuryFwk/Source/c/03_Sml/01_Pml/05_Eeprom/eeprom_if.c 
	@-${MV} ${OBJECTDIR}/_ext/354443485/eeprom_if.d ${OBJECTDIR}/_ext/354443485/eeprom_if.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/354443485/eeprom_if.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/955413872/ext_int.p1: ../../MercuryFwk/Source/c/03_Sml/02_Ssl/ext_int.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/955413872" 
	@${RM} ${OBJECTDIR}/_ext/955413872/ext_int.p1.d 
	@${RM} ${OBJECTDIR}/_ext/955413872/ext_int.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/955413872/ext_int.p1 ../../MercuryFwk/Source/c/03_Sml/02_Ssl/ext_int.c 
	@-${MV} ${OBJECTDIR}/_ext/955413872/ext_int.d ${OBJECTDIR}/_ext/955413872/ext_int.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/955413872/ext_int.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/955413872/led.p1: ../../MercuryFwk/Source/c/03_Sml/02_Ssl/led.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/955413872" 
	@${RM} ${OBJECTDIR}/_ext/955413872/led.p1.d 
	@${RM} ${OBJECTDIR}/_ext/955413872/led.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/955413872/led.p1 ../../MercuryFwk/Source/c/03_Sml/02_Ssl/led.c 
	@-${MV} ${OBJECTDIR}/_ext/955413872/led.d ${OBJECTDIR}/_ext/955413872/led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/955413872/led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/955413872/rtcm.p1: ../../MercuryFwk/Source/c/03_Sml/02_Ssl/rtcm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/955413872" 
	@${RM} ${OBJECTDIR}/_ext/955413872/rtcm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/955413872/rtcm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/955413872/rtcm.p1 ../../MercuryFwk/Source/c/03_Sml/02_Ssl/rtcm.c 
	@-${MV} ${OBJECTDIR}/_ext/955413872/rtcm.d ${OBJECTDIR}/_ext/955413872/rtcm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/955413872/rtcm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/955413872/sf.p1: ../../MercuryFwk/Source/c/03_Sml/02_Ssl/sf.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/955413872" 
	@${RM} ${OBJECTDIR}/_ext/955413872/sf.p1.d 
	@${RM} ${OBJECTDIR}/_ext/955413872/sf.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/955413872/sf.p1 ../../MercuryFwk/Source/c/03_Sml/02_Ssl/sf.c 
	@-${MV} ${OBJECTDIR}/_ext/955413872/sf.d ${OBJECTDIR}/_ext/955413872/sf.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/955413872/sf.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/955413872/sysm.p1: ../../MercuryFwk/Source/c/03_Sml/02_Ssl/sysm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/955413872" 
	@${RM} ${OBJECTDIR}/_ext/955413872/sysm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/955413872/sysm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/955413872/sysm.p1 ../../MercuryFwk/Source/c/03_Sml/02_Ssl/sysm.c 
	@-${MV} ${OBJECTDIR}/_ext/955413872/sysm.d ${OBJECTDIR}/_ext/955413872/sysm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/955413872/sysm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/955413872/term.p1: ../../MercuryFwk/Source/c/03_Sml/02_Ssl/term.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/955413872" 
	@${RM} ${OBJECTDIR}/_ext/955413872/term.p1.d 
	@${RM} ${OBJECTDIR}/_ext/955413872/term.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/955413872/term.p1 ../../MercuryFwk/Source/c/03_Sml/02_Ssl/term.c 
	@-${MV} ${OBJECTDIR}/_ext/955413872/term.d ${OBJECTDIR}/_ext/955413872/term.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/955413872/term.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/955413872/wdg.p1: ../../MercuryFwk/Source/c/03_Sml/02_Ssl/wdg.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/955413872" 
	@${RM} ${OBJECTDIR}/_ext/955413872/wdg.p1.d 
	@${RM} ${OBJECTDIR}/_ext/955413872/wdg.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/955413872/wdg.p1 ../../MercuryFwk/Source/c/03_Sml/02_Ssl/wdg.c 
	@-${MV} ${OBJECTDIR}/_ext/955413872/wdg.d ${OBJECTDIR}/_ext/955413872/wdg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/955413872/wdg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/538292599/app_main.p1: ../Source/c/04_App/app_main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/538292599" 
	@${RM} ${OBJECTDIR}/_ext/538292599/app_main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/538292599/app_main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/538292599/app_main.p1 ../Source/c/04_App/app_main.c 
	@-${MV} ${OBJECTDIR}/_ext/538292599/app_main.d ${OBJECTDIR}/_ext/538292599/app_main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/538292599/app_main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/538292599/cmd_add.p1: ../Source/c/04_App/cmd_add.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/538292599" 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_add.p1.d 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_add.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/538292599/cmd_add.p1 ../Source/c/04_App/cmd_add.c 
	@-${MV} ${OBJECTDIR}/_ext/538292599/cmd_add.d ${OBJECTDIR}/_ext/538292599/cmd_add.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/538292599/cmd_add.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/538292599/cmd_del.p1: ../Source/c/04_App/cmd_del.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/538292599" 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_del.p1.d 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_del.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/538292599/cmd_del.p1 ../Source/c/04_App/cmd_del.c 
	@-${MV} ${OBJECTDIR}/_ext/538292599/cmd_del.d ${OBJECTDIR}/_ext/538292599/cmd_del.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/538292599/cmd_del.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/538292599/cmd_init.p1: ../Source/c/04_App/cmd_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/538292599" 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/538292599/cmd_init.p1 ../Source/c/04_App/cmd_init.c 
	@-${MV} ${OBJECTDIR}/_ext/538292599/cmd_init.d ${OBJECTDIR}/_ext/538292599/cmd_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/538292599/cmd_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/538292599/cmd_res.p1: ../Source/c/04_App/cmd_res.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/538292599" 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_res.p1.d 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_res.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/538292599/cmd_res.p1 ../Source/c/04_App/cmd_res.c 
	@-${MV} ${OBJECTDIR}/_ext/538292599/cmd_res.d ${OBJECTDIR}/_ext/538292599/cmd_res.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/538292599/cmd_res.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/538292599/cmd_trigger.p1: ../Source/c/04_App/cmd_trigger.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/538292599" 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_trigger.p1.d 
	@${RM} ${OBJECTDIR}/_ext/538292599/cmd_trigger.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/538292599/cmd_trigger.p1 ../Source/c/04_App/cmd_trigger.c 
	@-${MV} ${OBJECTDIR}/_ext/538292599/cmd_trigger.d ${OBJECTDIR}/_ext/538292599/cmd_trigger.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/538292599/cmd_trigger.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/538292599/utils.p1: ../Source/c/04_App/utils.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/538292599" 
	@${RM} ${OBJECTDIR}/_ext/538292599/utils.p1.d 
	@${RM} ${OBJECTDIR}/_ext/538292599/utils.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist -DXPRJ_Standalone=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/538292599/utils.p1 ../Source/c/04_App/utils.c 
	@-${MV} ${OBJECTDIR}/_ext/538292599/utils.d ${OBJECTDIR}/_ext/538292599/utils.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/538292599/utils.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Application.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -m${DISTDIR}/Application.${IMAGE_TYPE}.map  -D__DEBUG=1  --debugger=pickit3  -DXPRJ_Standalone=$(CND_CONF)    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary ${DISTDIR}/memoryfile.xml -o${DISTDIR}/Application.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/Application.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/Application.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -m${DISTDIR}/Application.${IMAGE_TYPE}.map  -DXPRJ_Standalone=$(CND_CONF)    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../Source/h/04_App" -I"../../MercuryFwk/Source/h/01_Hal/01_Sys" -I"../../MercuryFwk/Source/h/01_Hal/02_Drv" -I"../../MercuryFwk/Source/h/02_Osl" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/01_Mdm" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/02_SlvI2c" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/03_SlvSer" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/04_Usb" -I"../../MercuryFwk/Source/h/03_Sml/01_Pml/05_Eeprom" -I"../../MercuryFwk/Source/h/03_Sml/02_Ssl" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary ${DISTDIR}/memoryfile.xml -o${DISTDIR}/Application.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
