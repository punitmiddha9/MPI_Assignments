
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

; Name: PUNIT MIDDHA
; RegNo: 19BCE2060

ASSUME CS:CODE,DS:DATA

DATA SEGMENT 
NUMLIST1 DB 0ABH,0DFH,0FFH,1EH,5CH,0D1H
COUNT EQU 6D
SMALLEST DW 01H DUP(?)  
DATA ENDS

CODE SEGMENT

START: MOV AX,DATA
       MOV DS,AX
       MOV SI,OFFSET NUMLIST1
       MOV CL,COUNT
       MOV AL,[SI] 
       DEC CL
       
AGAIN: CMP AL,[SI+1]
       JC NEXT
       MOV AL,[SI+1]
       
NEXT:  INC SI
       DEC CL
       JNZ AGAIN
       MOV SI,OFFSET SMALLEST
       MOV [SI],AL
       HLT
       
CODE ENDS
END START

ret