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
#include "app_resCmd.h"

/************************************************************************
* Defines
************************************************************************/

/************************************************************************
* Typedefs
************************************************************************/

typedef enum _resFsmStates
{
    RES_FSM_CHECK_MASTER = 0,
    RES_FSM_RESET,
    RES_FSM_COMPLETE
} resFsmStates;
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
bool resCmdFsm(uint8_t* receivedNumber, bool* isCmdSuccessfull)
{
    static resFsmStates currentState = RES_FSM_CHECK_MASTER;
    bool isComplete = false;
    uint8_t masterOpResult = OP_FAILED;

    switch (currentState)
    {
    case RES_FSM_CHECK_MASTER:
        *isCmdSuccessfull = false;
        masterOpResult = isMasterNumber(receivedNumber);
        if (masterOpResult == OP_SUCCESS)
        {
            currentState = RES_FSM_RESET;
        }
        else if (masterOpResult == OP_FAILED)
        {
            currentState = RES_FSM_COMPLETE;
        }
        break;

    case RES_FSM_RESET:
        if (Eeprom_Reset() == 0)
        {
            currentState = RES_FSM_COMPLETE;
            *isCmdSuccessfull = true;
        }
        break;

    case RES_FSM_COMPLETE:
        isComplete = true;
        currentState = RES_FSM_CHECK_MASTER;
        break;

    default:
        break;
    }
    return isComplete;
}
