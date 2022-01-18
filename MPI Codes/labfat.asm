; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt      

; NAME: PUNIT MIDDHA
; REGNO: 19BCE2060

DATA SEGMENT
    MSG DB 0DH,0AH,"DISPLAY Result",0DH,0AH,"$"
    A DW 10h, 1Bh, 0Dh, 17h, 12h, 0Ah   
    SZ DW 06H
DATA ENDS

ASSUME CS:CODE,DS:DATA

CODE SEGMENT
    START: MOV AX,DATA
           MOV DS,AX
           MOV SI,0000H
           MOV BX,06H
           DEC BX
       
       X2: MOV CX,BX
           MOV SI,00H
           
       X1: MOV AX,A[SI]
           INC SI
           INC SI
           CMP AX,A[SI]
           JNA X3
           XCHG AX,A[SI]
           MOV A[SI-2],AX
           
       X3: LOOP X1
           DEC BX
           JNZ X2
           
 

MOV AH, 09H
MOV DX, OFFSET MSG 
INT 21H



LEA SI, A
UP: MOV AX, [SI]
CALL PRINT

MOV DL, 32
    MOV AH, 02H
    INT 21H


INC SI
INC SI
DEC SZ
JNZ UP
MOV AH,4CH
INT 21H
  


PRINT PROC          
    mov cx,0
    mov dx,0
    label1:
        cmp ax,0
        je print1     
        mov bx,10
        div bx
        push dx
        inc cx
        xor dx,dx
        jmp label1
    print1:
        cmp cx,0
        je exit
        pop dx
        add dx,48
        mov ah,02h
        int 21h
        dec cx
        jmp print1
exit:
ret
PRINT ENDP

CODE ENDS
END START


;HEXA: 10h, 1Bh, 0Dh, 17h, 12h, 0Ah    
;DECIMAL: 16, 27, 13, -23, -18, 10