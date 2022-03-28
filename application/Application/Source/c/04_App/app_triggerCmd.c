/************************************************************************
*                          EEPROM Interface                             *
*************************************************************************
* FileName:         app_init.c                                          *
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
#include "app.h"
#include "app_utils.h"
#include "app_triggerCmd.h"

/************************************************************************
* Defines
************************************************************************/

/************************************************************************
* Typedefs
************************************************************************/

typedef enum _triggerFsmStates
{
    TRIGGER_FSM_CHECK_NUMBER = 0,
    TRIGGER_FSM_ACTIVATE_RELAY,
    TRIGGER_FSM_DEACTIVATE_RELAY,
    TRIGGER_FSM_COMPLETE
} triggerFsmStates;
/************************************************************************
* LOCAL Variables
************************************************************************/

/************************************************************************
* GLOBAL Variables
************************************************************************/

/************************************************************************
* LOCAL Function Prototypes
************************************************************************/

/************************************************************************
* LOCAL Function Implementations
************************************************************************/

uint8_t triggerRelay(bool isRelayOn)
{
    uint8_t txBuffer[2] = {0x50, 0x00};
    uint8_t res = STD_NOT_OK;
    if (isRelayOn)
    {
       txBuffer[1] = 0x01;
    }
    res = I2cSlv_SendI2cMsg(txBuffer, 1, 2);
    return res;
}
/************************************************************************
* GLOBAL Function Implementations
************************************************************************/

/**
 * @brief 
 * 
 */
bool triggerCmdFsm(uint8_t* receivedNumber)
{
    static triggerFsmStates currentState = TRIGGER_FSM_CHECK_NUMBER;
    bool isComplete = false;
    uint8_t numberInMemory = SEARCH_FAILED;

    switch (currentState)
    {
        //todo: check also master number, check call and hang up
    case TRIGGER_FSM_CHECK_NUMBER:
        numberInMemory = isNumberInMemory(receivedNumber);
        if (numberInMemory == SEARCH_FAILED)
        {
            currentState = TRIGGER_FSM_COMPLETE;
        }
        else if (numberInMemory != SEARCH_IN_PROGRESS && numberInMemory != SEARCH_FAILED)
        {
            currentState = TRIGGER_FSM_ACTIVATE_RELAY;
        }
        break;

    case TRIGGER_FSM_ACTIVATE_RELAY:
        triggerRelay(true);
        currentState = TRIGGER_FSM_DEACTIVATE_RELAY;
        break;

    case TRIGGER_FSM_DEACTIVATE_RELAY:
        // todo: implement timer
        triggerRelay(false);
        currentState = TRIGGER_FSM_COMPLETE;
        break;

    case TRIGGER_FSM_COMPLETE:
        isComplete = true;
        currentState = TRIGGER_FSM_CHECK_NUMBER;
        break;

    default:
        break;
    }
    return isComplete;
}
