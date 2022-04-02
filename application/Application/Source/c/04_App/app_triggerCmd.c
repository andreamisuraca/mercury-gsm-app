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
    TRIGGER_FSM_CHECK_MASTER = 0,
    TRIGGER_FSM_CHECK_NUMBER,
    TRIGGER_FSM_ACTIVATE_RELAY,
    TRIGGER_FSM_DEACTIVATE_RELAY,
    TRIGGER_FSM_COMPLETE
} triggerFsmStates;
/************************************************************************
* LOCAL Variables
************************************************************************/

static uint8_t relayBuffer[2] = {0x50, 0x00};
static uint16_t secondCounter = 0;
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
    uint8_t res = STD_NOT_OK;
    if (isRelayOn)
    {
       relayBuffer[1] = 0x01;
    }
    else
    {
       relayBuffer[1] = 0x00;
    }
    res = I2cSlv_SendI2cMsg(relayBuffer, 1, 2);
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
    static triggerFsmStates currentState = TRIGGER_FSM_CHECK_MASTER;
    bool isComplete = false;
    uint8_t numberInMemory = 0;
    uint8_t masterOpResult = OP_FAILED;
    uint8_t searchNumber = OP_FAILED;

    switch (currentState)
    {
    case TRIGGER_FSM_CHECK_MASTER:
        masterOpResult = isMasterNumber(receivedNumber);
        if (masterOpResult == OP_SUCCESS)
        {
            currentState = TRIGGER_FSM_ACTIVATE_RELAY;
        }
        else if (masterOpResult == OP_FAILED)
        {
            currentState = TRIGGER_FSM_CHECK_NUMBER;
        }
        break;

    case TRIGGER_FSM_CHECK_NUMBER:
        searchNumber = isNumberInMemory(receivedNumber, &numberInMemory);
        if (searchNumber == SEARCH_FSM_FOUND)
        {
            currentState = TRIGGER_FSM_ACTIVATE_RELAY;
        }
        else if (searchNumber == SEARCH_FSM_NOT_FOUND || searchNumber == SEARCH_FSM_ERROR)
        {
            currentState = TRIGGER_FSM_COMPLETE;
        }
        break;

    case TRIGGER_FSM_ACTIVATE_RELAY:
        triggerRelay(true);
        secondCounter = 0;
        currentState = TRIGGER_FSM_DEACTIVATE_RELAY;
        break;

    case TRIGGER_FSM_DEACTIVATE_RELAY:
        if (secondsAppTimer(1, secondCounter, false))
        {
            triggerRelay(false);
            currentState = TRIGGER_FSM_COMPLETE;
        }
        break;

    case TRIGGER_FSM_COMPLETE:
        isComplete = true;
        currentState = TRIGGER_FSM_CHECK_MASTER;
        break;

    default:
        break;
    }
    return isComplete;
}
