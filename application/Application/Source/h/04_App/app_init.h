/************************************************************************
*                          EEPROM Interface                             *
*************************************************************************
* FileName:         app_init.h                                          *
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
* A.Misuraca   19/03/21    1.0          First release                   *
************************************************************************/

#ifndef APP_INIT_H
#define	APP_INIT_H

/************************************************************************
* Includes
************************************************************************/

/************************************************************************
* EXPORTED Defines
************************************************************************/

#define PREAMBLE_LENGTH         5
#define MAX_NUMBERS_IN_MEM      10
#define COUNTER_POSITION_IN_MEM 4
/************************************************************************
* EXPORTED Typedef
************************************************************************/

/************************************************************************
* EXPORTED Variables
************************************************************************/

extern bool isMemoryEmpty;

extern uint8_t memorizedNumbersCount[1];
/************************************************************************
* EXPORTED Functions
************************************************************************/

bool initFsm(void);

uint8_t* initPreamble();

#endif    /* APP_INIT_H */
