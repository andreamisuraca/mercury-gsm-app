/************************************************************************
*                          COMMON UTILITIES                             *
*************************************************************************
* FileName:         utils.c                                             *
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
* A.Misuraca   20/03/22    1.0          First release                   *
************************************************************************/

/************************************************************************
* Includes
************************************************************************/
#include "app_main.h"
#include "utils.h"

/************************************************************************
* Defines
************************************************************************/
#define MAX_NUMBERS_IN_MEM      10
#define INIT_NUMBER_ADDRESS     32
#define OFFSET_NUMBER_ADDRESS   16

/************************************************************************
* Typedefs
************************************************************************/

/************************************************************************
* LOCAL Variables
************************************************************************/
/**
 * @brief Buffer received when read from NvM.
 */
static uint8_t readBuffer[PHONE_NUMBER_LEN] = {0};

/**
 * @brief Counter used to blink LED when a command is received.
 */
static uint16_t blinkInSeconds = 0xFFFF;

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
 * @brief Just a low cost (from RAM point of view) timer implementation.
 * 
 * @param seconds Target expiry seconds (MAX 255 seconds).
 * @param counter Reference counter to be incremented (16 bits). To be static.
 * @param isCyclic If the timer should expiry multiple times or single shot.
 * @return true Timer expired.
 * @return false Timer not yet expired.
 */
bool secondsAppTimer(uint8_t seconds, uint16_t* counter, bool isCyclic)
{
    bool isExpired = true;
    uint16_t destinationTicks = (uint16_t) (seconds * 1000) / MY_APP_TASK_PERIOD_MS;

    if (*counter < destinationTicks)
    {
        *counter += 1;
        isExpired = false;
    }
    if (*counter == destinationTicks)
    {
        if (isCyclic)
        {
            *counter = 0;
        }
        else
        {
            *counter = 0xFFFF;
        }
    }
    return isExpired;
}

/**
 * @brief Trigger LED 2 when a command is received.
 */
void triggerVisualEffect()
{
    blinkInSeconds = 0;
}

/**
 * @brief Blink differently depending if the command was successfully performed or not.
 * 
 * @param isCmdSuccessfull If the command was complete w/ or w/o errors.
 */
void cmdVisualEffet(bool isCmdSuccessfull)
{
    uint8_t seconds = 7;
    if (isCmdSuccessfull)
    {
        seconds = 3;
    }
    if (secondsAppTimer(seconds, &blinkInSeconds, false))
    {
        Led_SetLedStatus(LED_2, LED_STS_OFF);
    }
    else
    {
       Led_SetLedStatus(LED_2, LED_STS_BLINK);
    }
}

/**
 * @brief Helper function to save a phone number in NvM.
 * 
 * @param address Exact memory location where start writing.
 * @param phoneNumber The phone number to be saved in memory.
 */
void saveNumberInMemory(UINT8 address, UINT8* phoneNumber)
{
    Eeprom_Write(address, phoneNumber, PHONE_NUMBER_LEN);
}

/**
 * @brief Phone number validator.
 * 
 * @param phoneNumber The phone number to be checked.
 * @return true The input is a valid number.
 * @return false The input is not a valid number.
 */
bool isNumberValid(uint8_t* phoneNumber)
{
    bool isNumberOk = false;
    uint8_t i = 0;
    if (phoneNumber[0] == '+')
    {
        for (i = 1; i < PHONE_NUMBER_LEN; i++)
        {
            if (phoneNumber[i] >= '0' && phoneNumber[i] <= '9')
            {
                isNumberOk = true;
            }
            else
            {
                isNumberOk = false;
                break;
            }
        }
    }
    return isNumberOk;
}

/**
 * @brief State machine that verifies if a number is present in NvM.
 * 
 * @param phoneNumber Phone number to be checked.
 * @param positionInMemory If the number is found the position in memory is returned.
 * @return searchFsmStates Actual state of the current search operation.
 */
searchFsmStates isNumberInMemory(uint8_t* phoneNumber, uint8_t* positionInMemory)
{
    static searchFsmStates currentState = SEARCH_FSM_START;
    static uint8_t currentPosition = INIT_NUMBER_ADDRESS;
    EepromStsType memoryOpResult = OP_PENDING;

    if (currentState > SEARCH_FSM_CHECK_NUMBER)
    {
        currentState = SEARCH_FSM_START;
        currentPosition = INIT_NUMBER_ADDRESS;
    }
    if (currentPosition >= (INIT_NUMBER_ADDRESS + (OFFSET_NUMBER_ADDRESS * MAX_NUMBERS_IN_MEM)))
    {
        currentState = SEARCH_FSM_NOT_FOUND;
    }

    switch (currentState)
    {
    case SEARCH_FSM_START:
        memoryOpResult = Eeprom_Read(currentPosition, readBuffer, PHONE_NUMBER_LEN);
        if (memoryOpResult == OP_FAILED)
        {
            currentState = SEARCH_FSM_ERROR;
        }
        else if (memoryOpResult == OP_SUCCESS)
        {
            currentState = SEARCH_FSM_CHECK_NUMBER;
        }
        break;

    case SEARCH_FSM_CHECK_NUMBER:
        currentState = SEARCH_FSM_START;
        if (isNumberValid(readBuffer))
        {
            if (StringCompare(phoneNumber, readBuffer, PHONE_NUMBER_LEN))
            {
                *positionInMemory = currentPosition;
                currentState = SEARCH_FSM_FOUND;
            }
            else
            {
                // add method to skip other reads if I have already read all the memorized numbers.
            }
        }
        currentPosition += OFFSET_NUMBER_ADDRESS;
        break;

    default:
        break;
    }
    return currentState;
}

/**
 * @brief Verify if a given phone number is the master phone number.
 * 
 * @param phoneNumber Input phone number to be checked.
 * @return uint8_t Current status of the operation.
 */
uint8_t isMasterNumber(uint8_t* phoneNumber)
{
    EepromStsType memoryOpResult = OP_PENDING;

    memoryOpResult = Eeprom_Read(MASTER_NUMBER_ADDRESS, readBuffer, PHONE_NUMBER_LEN);
    if (memoryOpResult != OP_PENDING)
    {
        memoryOpResult = OP_FAILED;
        if (isNumberValid(readBuffer))
        {
            if (StringCompare(phoneNumber, readBuffer, PHONE_NUMBER_LEN))
            {
                memoryOpResult = OP_SUCCESS;
            }
        }
    }
    return memoryOpResult;
}

/**
 * @brief State machine to search an empty slot in NvM
 * 
 * @param positionInMemory If an empty slot is found, the position is returned.
 * @return searchFsmStates Current state of the search operation.
 */
searchFsmStates findEmptySpot(uint8_t* positionInMemory)
{
    static searchFsmStates currentState = SEARCH_FSM_START;
    static uint8_t currentPosition = INIT_NUMBER_ADDRESS;
    EepromStsType memoryOpResult = OP_PENDING;

    if (currentState > SEARCH_FSM_CHECK_NUMBER)
    {
        currentState = SEARCH_FSM_START;
        currentPosition = INIT_NUMBER_ADDRESS;
    }
    if (currentPosition >= (INIT_NUMBER_ADDRESS + (OFFSET_NUMBER_ADDRESS * MAX_NUMBERS_IN_MEM)))
    {
        currentState = SEARCH_FSM_NOT_FOUND;
    }

    switch (currentState)
    {
    case SEARCH_FSM_START:
        memoryOpResult = Eeprom_Read(currentPosition, readBuffer, PHONE_NUMBER_LEN);
        if (memoryOpResult == OP_FAILED)
        {
            currentState = SEARCH_FSM_ERROR;
        }
        else if (memoryOpResult == OP_SUCCESS)
        {
            currentState = SEARCH_FSM_CHECK_NUMBER;
        }
        break;

    case SEARCH_FSM_CHECK_NUMBER:
        if (isNumberValid(readBuffer))
        {
            currentPosition += OFFSET_NUMBER_ADDRESS;
            currentState = SEARCH_FSM_START;
        }
        else
        {
            currentState = SEARCH_FSM_NOT_FOUND;
            *positionInMemory = currentPosition;
        }
        break;

    default:
        break;
    }
    return currentState;
}
