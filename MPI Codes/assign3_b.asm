
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt   

; Name: PUNIT MIDDHA
; Regno: 19BCE2060

ASSUME CS:CODE,DS:DATA 

DATA SEGMENT 
    COUNT DW 0EH 
    NUM EQU 00H 
    DATA ENDS 

CODE SEGMENT 
    START:MOV AX,DATA 
          MOV DS,AX 
          MOV CX,COUNT
          SUB CX,0002H 
          MOV AL,NUM 
          MOV DI,OFFSET NUM 
          MOV [DI],AL
          INC DI 
          ADD AL,01H 
          MOV [DI],AL
           
       L1:MOV AL,[DI-1]
          ADD AL,[DI] 
          INC DI 
          MOV [DI],AL 
          LOOP L1  
          CODE ENDS 
END START