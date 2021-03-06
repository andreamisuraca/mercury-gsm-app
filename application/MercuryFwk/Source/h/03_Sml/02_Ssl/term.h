/************************************************************************
*                             Terminal                                  *
*************************************************************************
* FileName:         term.h                                              *
* HW:               Mercury System                                      *
* Author:           F.Ficili                                            *
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
* Responsible For This File: Francesco Ficili                           *
*                                                                       *
* --------------------------------------------------------------------- *
* Author       Date        Version      Comment                         *
* ---------------------------------------------------------------------	*
* F.Ficili     21/05/17    1.0          First release                   *
************************************************************************/

#ifndef TERM_H
#define	TERM_H


/************************************************************************
* Includes
************************************************************************/
#include "os_sched.h"

#if (TERM_TASK_STS == STD_ON)  
/************************************************************************
* EXPORTED Defines
************************************************************************/
#define TERM_TASK_PERIOD_MS                                ((UINT16)(1))
#define USB_PHONE_NUMBER_LEN                               ((UINT16)(15))

/************************************************************************
* EXPORTED Typedef
************************************************************************/


/************************************************************************
* EXPORTED Variables
************************************************************************/
/* Global phone number length */
extern UINT16 UsbMasterPhoneNumberLen;
/* Global phone number sent via USB */
extern char UsbMasterPhoneNumber[USB_PHONE_NUMBER_LEN];
/* Global variable to detect new number received via USB */
extern UINT8 IsUsbNumberReceived;
/************************************************************************
* EXPORTED Functions
************************************************************************/
void Term_MainTask (UINT8 Options);

#endif

#endif	/* TERM_H */

