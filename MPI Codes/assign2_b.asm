
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

; Name: PUNIT MIDDHA
; RegNo: 19BCE2060

ASSUME CS:CODE, DS: DATA

DATA SEGMENT
LIST2 DW 19H,0BCH,20H,60H
COUNT EQU 04
DATA ENDS

CODE SEGMENT

START: MOV AX,DATA
       MOV DS,AX
       MOV DX,COUNT-1

AGAINO: MOV CX,DX
        MOV SI,OFFSET LIST2
        
AGAIN1: MOV AX,[SI]
        CMP AX,[SI+2] 
        JNC PR1
        XCHG [SI+2],AX 
        XCHG [SI], AX

PR1: ADD SI,02
     LOOP AGAIN1
     DEC DX 
     JNZ AGAINO 
     MOV AH,4CH 
     INT 21H 

CODE ENDS 
END START

ret