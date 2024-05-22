INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.CODE
   
    MAIN PROC
        
        PRINT 'ENTER THE 1ST NUMBER: '
        MOV AH ,1
        INT 21H
        MOV BL,AL
        SUB BL,48
        
        PRINTN
         
        PRINT 'ENTER THE 2ND NUMBER: '
        
        
        MOV AH,1
        INT 21H
        SUB AL,48
        
        MUL BL
        MOV BL,AL
        ADD BL,48
        
        PRINTN
        PRINT 'THE RESULT IS: '
        
        MOV AH,2
        MOV DL,BL
        INT 21H
        
        
        MOV AH,4CH
        INT 21H
     MAIN ENDP
    
  END MAIN