INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.DATA
   MAIN PROC
    
    MOV BH,0 ;FOR CLEAR THE REGISTER
    MOV AH,1
    
    
    FOR:
    INT 21H
   
    CMP AL,0DH
    JE END_FOR
    
    SHL BH,1
    SUB AL,48
    OR BH,AL
    
    JMP FOR
    
    END_FOR:
    
      
    
    
     
     MAIN ENDP 
   END MAIN