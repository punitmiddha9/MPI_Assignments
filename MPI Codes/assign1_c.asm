
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

; Name: PUNIT MIDDHA
; RegNo: 19BCE2060

org 100h

; For A
MOV AX, 19BCH          

; For B
MOV BX, 2060H

; Multiply both A and B
MUL BX 

ret