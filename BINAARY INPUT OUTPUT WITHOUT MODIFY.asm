INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.CODE

   MAIN PROC
      
      MOV  BH,0
      MOV AH,1
      
    FOR:
        INT 21H
       CMP AL,0DH
       JE  FOR2
       
       SHL BH,1
       SUB AL,48
       OR BH,AL
       
       JMP FOR
       
       
    FOR2:
       PRINTN 
       PRINTN
       MOV AH,2
       MOV CH,8
       MOV CL,1
     FOR3: 
     
        CMP CL,CH
        JG EXIT 
        RCL BH,1
        INC CL
        JC CARRY
        MOV DL,'0'
        INT 21H
        JMP OTHER
     CARRY:
        MOV DL,'1'
        INT 21H
     OTHER:
      JMP FOR3
      
    EXIT:
       MAIN ENDP 
   END MAIN