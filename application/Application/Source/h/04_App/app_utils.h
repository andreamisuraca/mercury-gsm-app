/************************************************************************
*                          EEPROM Interface                             *
*************************************************************************
* FileName:         app_utils.h                                         *
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
#define INIT_NUMBER_ADDRESS     32
#define SEARCH_IN_PROGRESS      0
#define SEARCH_FAILED           1
#define TEXT_OFFSET             4
/************************************************************************
* EXPORTED Typedef
************************************************************************/

/************************************************************************
* EXPORTED Variables
************************************************************************/

/************************************************************************
* EXPORTED Functions
************************************************************************/

bool secondsAppTimer(uint8_t seconds, uint16_t* counter, bool isCyclic);

void blinkForSeconds(uint8_t seconds, uint16_t* blinkTicks);

bool waitSetupCall(void);
void saveNumberInMemory(UINT8 address, UINT8* phoneNumber);
bool isNumberValid(uint8_t* phoneNumber);
uint8_t isNumberInMemory(uint8_t* phoneNumber);
uint8_t findEmptySpot();
uint8_t isMasterNumber(uint8_t* phoneNumber);
#endif    /* APP_UTILS_H */
