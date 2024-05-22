.MODEL SMALL
.STACK 100H
.DATA 
   
   R1 DB "ENTER THE FIRST NUMBER: $"
   R2 DB "ENTER THE SECOND NUMBER: $" 
   R3 DB "RESULT: $"
.CODE

  MAIN PROC
     
     MOV AX,@DATA
     MOV DS,AX
    
      MOV AH,9
      LEA DX,R1
      INT 21H
      
      MOV AH,1
      INT 21H
      MOV BL,AL
      
      MOV AH,2
      MOV DL,10
      INT 21H
      MOV DL,13
      INT 21H
      
      MOV AH,9
      LEA DX,R2
      INT 21H
      
      MOV AH,1
      INT 21H
      MOV BH,AL
      
      MOV AH,2
      MOV DL,10
      INT 21H
      MOV DL,13
      INT 21H
      
      MOV AH,9
      LEA DX,R3
      INT 21H
      
      ADD BL,BH
      SUB BL,48
      
      MOV AH,2
      MOV DL,BL
      INT 21H
  
  EXIT:
    MOV AH,4CH
    INT 21H    
    MAIN ENDP
  END MAIN
  
      