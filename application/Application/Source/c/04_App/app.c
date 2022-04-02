/************************************************************************
*                              	APP                              		*
*************************************************************************
* FileName:         app.c                                      			*
* HW:               Mercury System                                      *
* Author:           F.Ficili                                            *
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
* Responsible For This File: Francesco Ficili                           *
*                                                                       *
* --------------------------------------------------------------------- *
* Author       Date        Version      Comment                         *
* ---------------------------------------------------------------------	*
* F.Ficili     09/07/17    1.0          First release                   *
************************************************************************/

/************************************************************************
* Includes
************************************************************************/
#include "app.h"
#include "app_utils.h"
#include "app_init.h"
#include "app_addCmd.h"
#include "app_delCmd.h"
#include "app_triggerCmd.h"
#include "app_resCmd.h"

/************************************************************************
* Defines
************************************************************************/

/************************************************************************
* Typedefs
************************************************************************/

typedef enum _gateFsmStates
{
    GATE_INIT = 0,
    GATE_WAIT_EVENT,
    GATE_ADD_CMD,
    GATE_DEL_CMD,
    GATE_TRIGGER_CMD,
    GATE_RESET
} gateFsmStates;

/************************************************************************
* LOCAL Variables
************************************************************************/
static uint8_t smsText[MESSAGE_BUFF_LEN] = {0};
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


gateFsmStates parseCommand()
{
    const uint8_t addNumberCmd[] = {'A', 'D', 'D', ';'};
    const uint8_t deleteNumberCmd[] = {'D', 'E', 'L', ';'};
    const uint8_t resetCmd[] = {'R', 'E', 'S', ';'};
    gateFsmStates state = GATE_WAIT_EVENT;

    if (StringCompare(smsText, addNumberCmd, sizeof(addNumberCmd)))
    {
        if (!isNumberValid(smsText + TEXT_OFFSET))
        {
            state = GATE_WAIT_EVENT;
        }
        else
        {
            state = GATE_ADD_CMD;
        }
    }
    else if (StringCompare(smsText, deleteNumberCmd, sizeof(deleteNumberCmd)))
    {
        if (!isNumberValid(smsText + TEXT_OFFSET))
        {
            state = GATE_WAIT_EVENT;
        }
        else
        {
            state = GATE_DEL_CMD;
        }
    }
    else if (StringCompare(smsText, resetCmd, sizeof(resetCmd)))
    {
        state = GATE_RESET;
    }
    else
    {
        /* ignore command */
    }
    return state;
}

gateFsmStates detectCmd()
{
    gateFsmStates currentState = GATE_WAIT_EVENT;
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
        currentState = GATE_TRIGGER_CMD;
        StringCopy(GetCallerNumber(), receivedNumber, PHONE_NUMBER_LEN);
    }
    return currentState;
}

/************************************************************************
* GLOBAL Function Implementations
************************************************************************/

/************************************************************************
* Function:     MyApp_Task
* Input:        None
* Output:       None
* Author:       F.Ficili
* Description:  My app main task.
* Date:         09/10/16
************************************************************************/
void MyApp_Task (UINT8 Options)
{
    static gateFsmStates currentState = GATE_INIT;
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
            case GATE_INIT:
                if (initFsm(&isCmdSuccessfull))
                {
                    currentState = GATE_WAIT_EVENT;
                }
                break;

            case GATE_WAIT_EVENT:
                if (detectUsbNumber(&isCmdSuccessfull))
                {
                    triggerVisualEffect();
                }
                currentState = detectCmd();
               break;

            case GATE_ADD_CMD:
                if (addCmdFsm(receivedNumber, smsText, &isCmdSuccessfull))
                {
                    currentState = GATE_WAIT_EVENT;
                    triggerVisualEffect();
                }
                break;

            case GATE_DEL_CMD:
                if (delCmdFsm(receivedNumber, smsText, &isCmdSuccessfull))
                {
                    currentState = GATE_WAIT_EVENT;
                    triggerVisualEffect();
                }
                break;

            case GATE_TRIGGER_CMD:
                if (triggerCmdFsm(receivedNumber))
                {
                    currentState = GATE_WAIT_EVENT;
                }
                break;

            case GATE_RESET:
                if (resCmdFsm(receivedNumber, &isCmdSuccessfull))
                {
                    currentState = GATE_INIT;
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
