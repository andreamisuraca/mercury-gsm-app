/************************************************************************
*                          EEPROM Interface                             *
*************************************************************************
* FileName:         app_utils.c                                         *
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
#include "app.h"
#include "app_utils.h"

/************************************************************************
* Defines
************************************************************************/

#define MAX_NUMBERS_IN_MEM      10
/************************************************************************
* Typedefs
************************************************************************/

/************************************************************************
* LOCAL Variables
************************************************************************/

uint8_t readBuffer[PHONE_NUMBER_LEN] = {0};
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
// max 255 seconds
// counter variable should be static/globally defined
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
 * @brief 
 * 
 * @param seconds 
 * @param blinkTicks 
 */
void blinkForSeconds(uint8_t seconds, uint16_t* blinkTicks)
{
    if (secondsAppTimer(seconds, blinkTicks, false))
    {
        Led_SetLedStatus(LED_1, LED_STS_ON);
    }
    else
    {
       Led_SetLedStatus(LED_1, LED_STS_BLINK); 
    }
}


/**
 * @brief 
 * 
 * @param address 
 * @param phoneNumber 
 */
void saveNumberInMemory(UINT8 address, UINT8* phoneNumber)
{
    Eeprom_Write(address, phoneNumber, PHONE_NUMBER_LEN);
}

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

// uint8_t isNumberInMemory(uint8_t* phoneNumber)
// {
//     static uint8_t currentPosition = INIT_NUMBER_ADDRESS;
//     uint8_t positionInMemory = SEARCH_IN_PROGRESS;
//     uint8_t readBuffer[PHONE_NUMBER_LEN];
//     EepromStsType memoryOpResult = OP_PENDING;

//     if (currentPosition >= INIT_NUMBER_ADDRESS * MAX_NUMBERS_IN_MEM)
//     {
//         currentPosition = INIT_NUMBER_ADDRESS;
//     }
//     memoryOpResult = Eeprom_Read(currentPosition, readBuffer, PHONE_NUMBER_LEN);
//     if (memoryOpResult != OP_PENDING)
//     {
//         if (isNumberValid(readBuffer))
//         {
//             if (StringCompare(phoneNumber, readBuffer, PHONE_NUMBER_LEN))
//             {
//                 positionInMemory = currentPosition;
//                 currentPosition = INIT_NUMBER_ADDRESS * MAX_NUMBERS_IN_MEM;
//             }
//             else
//             {
//                 // add method to skip other reads if I have already read all the memorized numbers.
//             }
//         }
//         currentPosition += INIT_NUMBER_ADDRESS;
//     }
//     if (positionInMemory == SEARCH_IN_PROGRESS && currentPosition >= INIT_NUMBER_ADDRESS * MAX_NUMBERS_IN_MEM)
//     {
//         positionInMemory = SEARCH_FAILED;
//     }
//     return positionInMemory;
// }

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

// uint8_t findEmptySpot()
// {
//     static uint8_t currentPosition = INIT_NUMBER_ADDRESS;
//     uint8_t positionInMemory = SEARCH_IN_PROGRESS;
//     uint8_t readBuffer[PHONE_NUMBER_LEN];
//     EepromStsType memoryOpResult = OP_PENDING;

//     if (currentPosition >= INIT_NUMBER_ADDRESS * MAX_NUMBERS_IN_MEM)
//     {
//         currentPosition = INIT_NUMBER_ADDRESS;
//     }
//     memoryOpResult = Eeprom_Read(currentPosition, readBuffer, PHONE_NUMBER_LEN);
//     if (memoryOpResult != OP_PENDING)
//     {
//         if (isNumberValid(readBuffer))
//         {
//             currentPosition += INIT_NUMBER_ADDRESS;
//         }
//         else
//         {
//             positionInMemory = currentPosition;
//             currentPosition = INIT_NUMBER_ADDRESS * MAX_NUMBERS_IN_MEM;
//         }
//     }
//     if (positionInMemory == 0 && currentPosition >= INIT_NUMBER_ADDRESS * MAX_NUMBERS_IN_MEM)
//     {
//         positionInMemory = SEARCH_FAILED;
//     }
//     return positionInMemory;
// }

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
