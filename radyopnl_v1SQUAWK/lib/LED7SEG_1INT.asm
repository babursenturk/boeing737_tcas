;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: LED7SEG_1INT.asm
;;   Version: 1.0, Updated on 2006/06/14 at 07:47:37
;;  Generated by PSoC Designer ver 4.4  b1884 : 14 Jan, 2007
;;
;;  DESCRIPTION: LED7SEG Interrupt Service Routine
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress MicroSystems 2000-2004. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************

include "m8c.inc"
include "memory.inc"
include "LED7SEG_1.inc"


;-----------------------------------------------
;  Global Symbols
;-----------------------------------------------
export  _LED7SEG_1_ISR


AREA InterruptRAM (RAM,REL,CON)

;@PSoC_UserCode_INIT@ (Do not change this line.)
;---------------------------------------------------
; Insert your custom declarations below this banner
;---------------------------------------------------

;------------------------
; Includes
;------------------------

	
;------------------------
;  Constant Definitions
;------------------------


;------------------------
; Variable Allocation
;------------------------


;---------------------------------------------------
; Insert your custom declarations above this banner
;---------------------------------------------------
;@PSoC_UserCode_END@ (Do not change this line.)


AREA UserModules (ROM, REL)

;-----------------------------------------------------------------------------
;  FUNCTION NAME: _LED7SEG_1_ISR
;
;  DESCRIPTION: Unless modified, this implements only a null handler stub.
;
;-----------------------------------------------------------------------------
;

_LED7SEG_1_ISR:

   lcall  LED7SEG_1_Update   ; A and X are preserved for this call.

   ;@PSoC_UserCode_BODY@ (Do not change this line.)
   ;---------------------------------------------------
   ; Insert your custom code below this banner
   ;---------------------------------------------------
   ;   NOTE: interrupt service routines must preserve
   ;   the values of the A and X CPU registers.
   ;---------------------------------------------------


   ;---------------------------------------------------
   ; Insert your custom code above this banner
   ;---------------------------------------------------
   ;@PSoC_UserCode_END@ (Do not change this line.)

   reti


; end of file LED7SEG_1INT.asm
