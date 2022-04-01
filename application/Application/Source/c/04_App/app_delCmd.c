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
#include "app_delCmd.h"

/************************************************************************
* Defines
************************************************************************/

/************************************************************************
* Typedefs
************************************************************************/

typedef enum _delFsmStates
{
    DEL_FSM_CHECK_MASTER = 0,
    DEL_FSM_REMOVE_NUMBER,
    DEL_FSM_COMPLETE
} delFsmStates;
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

/************************************************************************
* GLOBAL Function Implementations
************************************************************************/

/**
 * @brief 
 * 
 */
bool delCmdFsm(uint8_t* receivedNumber, uint8_t* smsText)
{
    const uint8_t emptyNumber[PHONE_NUMBER_LEN] = {0};
    static delFsmStates currentState = DEL_FSM_CHECK_MASTER;
    bool isComplete = false;
    uint8_t numberInMemory = 0;
    uint8_t masterOpResult = OP_FAILED;
    uint8_t searchNumber = OP_FAILED;

    switch (currentState)
    {
    case DEL_FSM_CHECK_MASTER:
        masterOpResult = isMasterNumber(receivedNumber);
        if (masterOpResult == OP_SUCCESS)
        {
            currentState = DEL_FSM_REMOVE_NUMBER;
        }
        else if (masterOpResult == OP_FAILED)
        {
            currentState = DEL_FSM_COMPLETE;
        }
        break;

    case DEL_FSM_REMOVE_NUMBER:
        searchNumber = isNumberInMemory(smsText + TEXT_OFFSET, &numberInMemory);
        if (searchNumber == SEARCH_FSM_FOUND)
        {
            saveNumberInMemory(numberInMemory, emptyNumber);
            currentState = DEL_FSM_COMPLETE;
        }
        else if (searchNumber == SEARCH_FSM_NOT_FOUND || searchNumber == SEARCH_FSM_ERROR)
        {
            currentState = DEL_FSM_COMPLETE;
        }
        break;

    case DEL_FSM_COMPLETE:
        isComplete = true;
        currentState = DEL_FSM_CHECK_MASTER;
        break;

    default:
        break;
    }
    return isComplete;
}
