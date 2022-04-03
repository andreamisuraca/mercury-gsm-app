/************************************************************************
*                           COMMAND DELETE                              *
*************************************************************************
* FileName:         cmd_del.c                                           *
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
#include "cmd_del.h"

/************************************************************************
* Defines
************************************************************************/

/************************************************************************
* Typedefs
************************************************************************/
/**
 * States of the DEL command state machine.
 */
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
 * @brief Main state machine triggered when a DEL command is received.
 * 
 * @param receivedNumber Who send the SMS text.
 * @param smsText Content of the SMS text.
 * @param isCmdSuccessfull If the command was complete w/ or w/o errors.
 * @return true If there is no operation in progress.
 * @return false If the operation is still in progress.
 */
bool delCmdFsm(uint8_t* receivedNumber, uint8_t* smsText, bool* isCmdSuccessfull)
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
        *isCmdSuccessfull = false;
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
            *isCmdSuccessfull = true;
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
