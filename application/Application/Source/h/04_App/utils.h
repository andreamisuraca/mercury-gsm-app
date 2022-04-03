/************************************************************************
*                          COMMON UTILITIES                             *
*************************************************************************
* FileName:         utils.h                                             *
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
* A.Misuraca   20/03/21    1.0          First release                   *
************************************************************************/

#ifndef APP_UTILS_H
#define	APP_UTILS_H

/************************************************************************
* Includes
************************************************************************/

/************************************************************************
* EXPORTED Defines
************************************************************************/
#define MASTER_NUMBER_ADDRESS   16
#define TEXT_OFFSET             4

/************************************************************************
* EXPORTED Typedef
************************************************************************/
/**
 * States of the SEARCH NUMBER state machine.
 */
typedef enum _searchFsmStates
{
    SEARCH_FSM_START = 0,
    SEARCH_FSM_CHECK_NUMBER,
    SEARCH_FSM_ERROR,
    SEARCH_FSM_FOUND,
    SEARCH_FSM_NOT_FOUND
} searchFsmStates;

/************************************************************************
* EXPORTED Variables
************************************************************************/

/************************************************************************
* EXPORTED Functions
************************************************************************/
/**
 * @brief Just a low cost (from RAM point of view) timer implementation.
 * 
 * @param seconds Target expiry seconds (MAX 255 seconds).
 * @param counter Reference counter to be incremented (16 bits). To be static.
 * @param isCyclic If the timer should expiry multiple times or single shot.
 * @return true Timer expired.
 * @return false Timer not yet expired.
 */
bool secondsAppTimer(uint8_t seconds, uint16_t* counter, bool isCyclic);

/**
 * @brief Trigger LED 2 when a command is received.
 */
void triggerVisualEffect();

/**
 * @brief Blink differently depending if the command was successfully performed or not.
 * 
 * @param isCmdSuccessfull If the command was complete w/ or w/o errors.
 */
void cmdVisualEffet(bool isCmdSuccessfull);

/**
 * @brief Helper function to save a phone number in NvM.
 * 
 * @param address Exact memory location where start writing.
 * @param phoneNumber The phone number to be saved in memory.
 */
void saveNumberInMemory(UINT8 address, UINT8* phoneNumber);

/**
 * @brief Phone number validator.
 * 
 * @param phoneNumber The phone number to be checked.
 * @return true The input is a valid number.
 * @return false The input is not a valid number.
 */
bool isNumberValid(uint8_t* phoneNumber);

/**
 * @brief State machine that verifies if a number is present in NvM.
 * 
 * @param phoneNumber Phone number to be checked.
 * @param positionInMemory If the number is found the position in memory is returned.
 * @return searchFsmStates Actual state of the current search operation.
 */
searchFsmStates isNumberInMemory(uint8_t* phoneNumber, uint8_t* positionInMemory);

/**
 * @brief Verify if a given phone number is the master phone number.
 * 
 * @param phoneNumber Input phone number to be checked.
 * @return uint8_t Current status of the operation.
 */
uint8_t isMasterNumber(uint8_t* phoneNumber);

/**
 * @brief State machine to search an empty slot in NvM
 * 
 * @param positionInMemory If an empty slot is found, the position is returned.
 * @return searchFsmStates Current state of the search operation.
 */
searchFsmStates findEmptySpot(uint8_t* positionInMemory);

#endif    /* APP_UTILS_H */
