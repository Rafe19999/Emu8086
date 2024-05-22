INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
  
  MAIN PROC
    
    CALL MULTIPLICATION
    
      MOV AH,4CH
      INT 21H
      
    
    MAIN ENDP
     
     
     MULTIPLICATION PROC
        
        PRINT "ENTER THE FIRST NUMBER : "
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48
    
    
    PRINTN
    PRINT "ENTER THE SECOND NUMBER : "
    
    INT 21H
    SUB AL,48
    
    
   MUL BL
    ADD AL,48
    
    PRINTN
    PRINT "THE SUM OF THE TWO NUMBERS : "
    
    MOV AH,2
    MOV DL,AL
    INT 21H 
       
       
       
        
       RET
     MULTIPLICATION ENDP
     
  END MAIN