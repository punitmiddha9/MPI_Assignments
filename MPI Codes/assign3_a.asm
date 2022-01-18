
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt    

; Name: PUNIT MIDDHA
; Regno: 19BCE2060

ASSUME CS:CODE, DS:DATA

DATA SEGMENT
FACT DW 07H
RES DW ?
DATA ENDS

CODE SEGMENT  
    
START: MOV AX,DATA
       MOV DS,AX
       MOV CX,FACT
       MOV AX,01H 
LO1: MUL CX
    LOOP LO1

MOV RES,AX

CODE ENDS
END START