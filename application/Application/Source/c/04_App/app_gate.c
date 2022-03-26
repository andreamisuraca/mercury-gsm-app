/************************************************************************
*                          EEPROM Interface                             *
*************************************************************************
* FileName:         app_gate.c                                          *
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
#include "app_gate.h"
#include "app_init.h"
#include "app_utils.h"

/************************************************************************
* Defines
************************************************************************/

#define TIMEOUT_SETUP_CALL      30

/************************************************************************
* Typedefs
************************************************************************/

/************************************************************************
* LOCAL Variables
************************************************************************/

static uint16_t setupCallTicks = 0;

/************************************************************************
* GLOBAL Variables
************************************************************************/

/************************************************************************
* LOCAL Function Prototypes
************************************************************************/

/************************************************************************
* LOCAL Function Implementations
************************************************************************/
/**
 * @brief 
 * 
 */
bool getSetupCall(void)
{
    bool isCalledReceived = false;

    if (Mdm_IsRinging())
    {
        Mdm_HangPhoneCall();
        isCalledReceived = true;
    }
    return isCalledReceived;
}

/************************************************************************
* GLOBAL Function Implementations
************************************************************************/
/**
 * @brief 
 * 
 */
bool waitSetupCall(void)
{
    bool isCallArrived = false;
    if (!secondsAppTimer(TIMEOUT_SETUP_CALL, &setupCallTicks, false))
    {
        Led_SetLedStatus(LED_1, LED_STS_BLINK);
        if (getSetupCall())
        {
            isCallArrived = true;
        }
    }
    else
    {
        Led_SetLedStatus(LED_1, LED_STS_ON);
    }
    return isCallArrived;
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

/**
 * @brief 
 * 
 */
void initMemorizedNumbersCount()
{
    Eeprom_Write(0, initPreamble(), PREAMBLE_LENGTH);
}

bool incrementMemorizedNumbersCount()
{
    bool isError = false;
    if (memorizedNumbersCount[0] == MAX_NUMBERS_IN_MEM)
    {
        isError = true;
    }
    else
    {
        memorizedNumbersCount[0]++;
        Eeprom_Write(COUNTER_POSITION_IN_MEM, memorizedNumbersCount, 1);
    }
    return isError;
}

bool decrementMemorizedNumbersCount()
{
    bool isError = false;
    if (memorizedNumbersCount[0] == 1)
    {
        isError = true;
    }
    else
    {
        memorizedNumbersCount[0]--;
        Eeprom_Write(COUNTER_POSITION_IN_MEM, memorizedNumbersCount, 1);
    }
    return isError;
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

uint8_t isNumberInMemory(uint8_t* phoneNumber)
{
    const uint8_t searchInProgress = 0;
    const uint8_t searchFailed = 1;
    static uint8_t currentPosition = INIT_NUMBER_ADDRESS;
    uint8_t positionInMemory = searchInProgress;
    uint8_t readBuffer[PHONE_NUMBER_LEN];
    EepromStsType memoryOpResult = OP_PENDING;

    if (currentPosition >= INIT_NUMBER_ADDRESS * MAX_NUMBERS_IN_MEM)
    {
        currentPosition = INIT_NUMBER_ADDRESS;
    }
    memoryOpResult = Eeprom_Read(currentPosition, readBuffer, PHONE_NUMBER_LEN);
    if (memoryOpResult != OP_PENDING)
    {
        if (isNumberValid(readBuffer))
        {
            if (StringCompare(phoneNumber, readBuffer, PHONE_NUMBER_LEN))
            {
                positionInMemory = currentPosition;
                currentPosition = INIT_NUMBER_ADDRESS * MAX_NUMBERS_IN_MEM;
            }
            else
            {
                // add method to skip other reads if I have already read all the memorized numbers.
            }
        }
        currentPosition += INIT_NUMBER_ADDRESS;
    }
    if (positionInMemory == 0 && currentPosition >= INIT_NUMBER_ADDRESS * MAX_NUMBERS_IN_MEM)
    {
        positionInMemory = searchFailed;
    }
    return positionInMemory;
}

uint8_t findEmptySpot()
{
    const uint8_t searchInProgress = 0;
    const uint8_t searchFailed = 1;
    static uint8_t currentPosition = INIT_NUMBER_ADDRESS;
    uint8_t positionInMemory = searchInProgress;
    uint8_t readBuffer[PHONE_NUMBER_LEN];
    EepromStsType memoryOpResult = OP_PENDING;

    if (currentPosition >= INIT_NUMBER_ADDRESS * MAX_NUMBERS_IN_MEM)
    {
        currentPosition = INIT_NUMBER_ADDRESS;
    }
    memoryOpResult = Eeprom_Read(currentPosition, readBuffer, PHONE_NUMBER_LEN);
    if (memoryOpResult != OP_PENDING)
    {
        if (isNumberValid(readBuffer))
        {
            currentPosition += INIT_NUMBER_ADDRESS;
        }
        else
        {
            positionInMemory = currentPosition;
            currentPosition = INIT_NUMBER_ADDRESS * MAX_NUMBERS_IN_MEM;
        }
    }
    return positionInMemory;
}
