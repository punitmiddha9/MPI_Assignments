
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

; Name: PUNIT MIDDHA
; RagNo: 19BCE2060 

org 100h

; For A
MOV DX, 19BCH
MOV CX, 2060H   

; For B
MOV BX, 0FF12H
MOV AX, 67ABH

; Negation of A
NEG CX
NEG DX

; Adding both A and B
ADD AX,CX
ADD BX,DX

ret