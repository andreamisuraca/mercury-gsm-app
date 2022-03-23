/************************************************************************
*                          EEPROM Interface                             *
*************************************************************************
* FileName:         app_gate.h                                          *
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

#ifndef APP_GATE_H
#define	APP_GATE_H

/************************************************************************
* Includes
************************************************************************/

/************************************************************************
* EXPORTED Defines
************************************************************************/

#define INIT_NUMBER_ADDRESS     16
/************************************************************************
* EXPORTED Typedef
************************************************************************/

/************************************************************************
* EXPORTED Variables
************************************************************************/

/************************************************************************
* EXPORTED Functions
************************************************************************/

bool waitSetupCall(void);
void saveNumberInMemory(UINT8 address, UINT8* phoneNumber);
void initMemorizedNumbersCount();
bool isNumberValid(uint8_t* phoneNumber);
uint8_t isNumberInMemory(uint8_t* phoneNumber);

#endif    /* APP_GATE_H */
