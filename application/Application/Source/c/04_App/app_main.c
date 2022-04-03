/************************************************************************
*                            APP MAIN TASK                              *
*************************************************************************
* FileName:         app_main.c                                          *
* HW:               Mercury System                                      *
* Author:           A.Misuraca                                          *
*                                                                       *
* Software License Agreement:                                           *
*                                                                       *
* THIS SOFTWARE IS PROVIDED IN AN "AS IS" CONDITION. NO WARRANTIES,     *
* WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED     *
* TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A           *
* PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE AUTHOR SHALL NOT,      *
* IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR            *
* CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.                     *
*                                                                       *
* --------------------------------------------------------------------- *
* Responsible For This File: Andrea Misuraca                            *
*                                                                       *
* --------------------------------------------------------------------- *
* Author       Date        Version      Comment                         *
* ---------------------------------------------------------------------	*
* A.Misuraca   19/03/22    1.0          First release                   *
************************************************************************/

/************************************************************************
* Includes
************************************************************************/
#include "app_main.h"
#include "utils.h"
#include "cmd_init.h"
#include "cmd_add.h"
#include "cmd_del.h"
#include "cmd_trigger.h"
#include "cmd_res.h"

/************************************************************************
* Defines
************************************************************************/

/************************************************************************
* Typedefs
************************************************************************/
/**
 * States of the App main state machine.
 */
typedef enum _appMainFsmStates
{
    APP_MAIN_INIT = 0,
    APP_MAIN_WAIT_EVENT,
    APP_MAIN_ADD_CMD,
    APP_MAIN_DEL_CMD,
    APP_MAIN_TRIGGER_CMD,
    APP_MAIN_RESET
} appMainFsmStates;

/************************************************************************
* LOCAL Variables
************************************************************************/
/**
 * @brief Buffer used when a new SMS text is received.
 */
static uint8_t smsText[MESSAGE_BUFF_LEN] = {0};

/**
 * @brief Buffer used when a new SMS text or phone call is received.
 */
static uint8_t receivedNumber[PHONE_NUMBER_LEN] = {0};

/************************************************************************
* GLOBAL Variables
************************************************************************/

/************************************************************************
* LOCAL Function Prototypes
************************************************************************/

/************************************************************************
* LOCAL Function Implementations
************************************************************************/
/**
 * @brief Function used to parse the SMS text and identify the command.
 * 
 * @return appMainFsmStates Future state of the main app state machine.
 */
appMainFsmStates parseCommand()
{
    const uint8_t addNumberCmd[] = {'A', 'D', 'D', ';'};
    const uint8_t deleteNumberCmd[] = {'D', 'E', 'L', ';'};
    const uint8_t resetCmd[] = {'R', 'E', 'S', ';'};
    appMainFsmStates state = APP_MAIN_WAIT_EVENT;

    if (StringCompare(smsText, addNumberCmd, sizeof(addNumberCmd)))
    {
        if (!isNumberValid(smsText + TEXT_OFFSET))
        {
            state = APP_MAIN_WAIT_EVENT;
        }
        else
        {
            state = APP_MAIN_ADD_CMD;
        }
    }
    else if (StringCompare(smsText, deleteNumberCmd, sizeof(deleteNumberCmd)))
    {
        if (!isNumberValid(smsText + TEXT_OFFSET))
        {
            state = APP_MAIN_WAIT_EVENT;
        }
        else
        {
            state = APP_MAIN_DEL_CMD;
        }
    }
    else if (StringCompare(smsText, resetCmd, sizeof(resetCmd)))
    {
        state = APP_MAIN_RESET;
    }
    else
    {
        /* ignore command */
    }
    return state;
}

/**
 * @brief Function used to detect if a new command is received (SMS of phone call).
 * 
 * @return appMainFsmStates Future state of the main app state machine.
 */
appMainFsmStates detectCmd()
{
    appMainFsmStates currentState = APP_MAIN_WAIT_EVENT;
    if (Mdm_IsSmsReceived())
    {
        Mdm_RequestSmsData();
    }
    if (Mdm_GetSmsData(smsText) == SmsDataReady)
    {
        Uart_WriteConstString(1,"AT+CMGD=1,0\r\n");
        currentState = parseCommand();
        StringCopy(GetLastInteractionNumber(), receivedNumber, PHONE_NUMBER_LEN);
    }
    if (Mdm_IsRinging())
    {
        Mdm_HangPhoneCall();
        currentState = APP_MAIN_TRIGGER_CMD;
        StringCopy(GetCallerNumber(), receivedNumber, PHONE_NUMBER_LEN);
    }
    return currentState;
}

/************************************************************************
* GLOBAL Function Implementations
************************************************************************/
/**
 * @brief Main task of the application
 * 
 * @param Options Unused parameter.
 */
void MyApp_Task (UINT8 Options)
{
    static appMainFsmStates currentState = APP_MAIN_INIT;
    static bool isCmdSuccessfull = true;

    cmdVisualEffet(isCmdSuccessfull);

    switch (SystemState)
    {
        /* System Initialization Phase */
        case InitializationState:
            /* Make app init. if necesary */ 
            Led_SetLedBlinkTime(LED_1,100,900);
            Led_SetLedBlinkTime(LED_2,100,900);
            break;

        /* System Normal operation Phase */
        case RunningState:
            switch (currentState)
            {
            case APP_MAIN_INIT:
                if (initFsm(&isCmdSuccessfull))
                {
                    currentState = APP_MAIN_WAIT_EVENT;
                }
                break;

            case APP_MAIN_WAIT_EVENT:
                if (detectUsbNumber(&isCmdSuccessfull))
                {
                    triggerVisualEffect();
                }
                currentState = detectCmd();
               break;

            case APP_MAIN_ADD_CMD:
                if (addCmdFsm(receivedNumber, smsText, &isCmdSuccessfull))
                {
                    currentState = APP_MAIN_WAIT_EVENT;
                    triggerVisualEffect();
                }
                break;

            case APP_MAIN_DEL_CMD:
                if (delCmdFsm(receivedNumber, smsText, &isCmdSuccessfull))
                {
                    currentState = APP_MAIN_WAIT_EVENT;
                    triggerVisualEffect();
                }
                break;

            case APP_MAIN_TRIGGER_CMD:
                if (triggerCmdFsm(receivedNumber))
                {
                    currentState = APP_MAIN_WAIT_EVENT;
                }
                break;

            case APP_MAIN_RESET:
                if (resCmdFsm(receivedNumber, &isCmdSuccessfull))
                {
                    currentState = APP_MAIN_INIT;
                    triggerVisualEffect();
                }
                break;

            default:
                break;
            }
            break;

        /* Default */
        default:
            break;
    }
}
