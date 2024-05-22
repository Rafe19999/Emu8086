INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE

  MAIN PROC
    
    
    CALL ADDITION
    
  MOV AH,4CH
  INT 21H
  
  MAIN ENDP
  
  ADDITION PROC
    
    PRINT "ENTER THE FIRST NUMBER : "
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48
    
    
    PRINTN
    PRINT "ENTER THE SECOND NUMBER : "
    
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    
    ADD BL,BH
    ADD BL,48
    
    PRINTN
    PRINT "THE SUM OF THE TWO NUMBERS : "
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
  
   RET
  ADDITION ENDP
  
END MAIN
    
    