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
#include "app_addCmd.h"

/************************************************************************
* Defines
************************************************************************/

/************************************************************************
* Typedefs
************************************************************************/

typedef enum _addFsmStates
{
    ADD_FSM_CHECK_MASTER = 0,
    ADD_FSM_CHECK_DUPLICATED,
    ADD_FSM_SAVE_NEW,
    ADD_FSM_COMPLETE
} addFsmStates;
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
bool addCmdFsm(uint8_t* receivedNumber, uint8_t* smsText)
{
    static addFsmStates currentState = ADD_FSM_CHECK_MASTER;
    bool isComplete = false;
    uint8_t numberInMemory = 0;
    uint8_t masterOpResult = OP_FAILED;
    uint8_t searchNumber = OP_FAILED;

    switch (currentState)
    {
    case ADD_FSM_CHECK_MASTER:
        masterOpResult = isMasterNumber(receivedNumber);
        if (masterOpResult == OP_SUCCESS)
        {
            currentState = ADD_FSM_CHECK_DUPLICATED;
        }
        else if (masterOpResult == OP_FAILED)
        {
            currentState = ADD_FSM_COMPLETE;
        }
        break;

    case ADD_FSM_CHECK_DUPLICATED:
        searchNumber = isNumberInMemory(smsText + TEXT_OFFSET, &numberInMemory);
        if (searchNumber == SEARCH_FSM_NOT_FOUND)
        {
            currentState = ADD_FSM_SAVE_NEW;
        }
        else if (searchNumber == SEARCH_FSM_FOUND || searchNumber == SEARCH_FSM_ERROR)
        {
            currentState = ADD_FSM_COMPLETE;
        }
        break;

    case ADD_FSM_SAVE_NEW:
        searchNumber = findEmptySpot(&numberInMemory);
        if (searchNumber == SEARCH_FSM_NOT_FOUND)
        {
            saveNumberInMemory(numberInMemory, smsText + TEXT_OFFSET);
            currentState = ADD_FSM_COMPLETE;
        }
        else if (searchNumber == SEARCH_FSM_FOUND || searchNumber == SEARCH_FSM_ERROR)
        {
            currentState = ADD_FSM_COMPLETE;
        }
        break;

    case ADD_FSM_COMPLETE:
        currentState = ADD_FSM_CHECK_MASTER;
        isComplete = true;
        break;

    default:
        break;
    }
    return isComplete;
}
