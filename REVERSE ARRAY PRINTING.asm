INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA

.CODE

   MAIN PROC
       
       MOV AX,@DATA
       MOV DS,AX
       
       PRINT "INPUT: "
       XOR BX,BX
       MOV CH,5
       MOV CL,1
       MOV AH,1
     
     INPUT:
       INT 21H
      
       CMP CL,CH
       JE EXIT_INPUT
       MOV BL,AL
       INC BL
       INC CL
      JMP INPUT
      
     EXIT_INPUT: 
       
       PRINTN
       PRINT "OUTPUT: "
       
       MOV CH,5
       MOV CL,0
       MOV AH,2
     
     OUTPUT:
       CMP CH,CL
       JE EXIT 
       MOV DL,BL
       INT 21H
       DEC BL
       DEC CH
     JMP OUTPUT  
     
     
   EXIT:  
     
    MOV AH,4CH
    INT 21H  
   MAIN ENDP
 END MAIN