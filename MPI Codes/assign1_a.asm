
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

; Name: PUNIT MIDDHA
; RegNo: 19BCE2060

org 100h

MOV DX, 19BCH
MOV CX, 2060H
MOV BX, 0FF12H
MOV AX, 67ABH
ADD CX, AX
ADC DX, BX

ret