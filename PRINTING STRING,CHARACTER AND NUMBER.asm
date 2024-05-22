.MODEL SMALL
.STACK 100H

.DATA
    
    ;VARIABLE DECLEARE
    NUM DB 5
    CHAR DB 'A'
    STR DB "THE FIRST BATCH $"
    
.CODE
   
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        
        MOV AH,2
        MOV DL, NUM
        INT 21H
        
        
        MOV AH,2
        MOV DL, CHAR
        INT 21H
        
        
        MOV AH,09H
        LEA DX, STR
        INT 21H
        
        
      MAIN ENDP
    MOV AH,4CH
    INT 21H
    
    
  END MAIN





