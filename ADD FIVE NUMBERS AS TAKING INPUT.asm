.MODEL SMALL 
.STACK 100H    
INCLUDE 'EMU8086.INC' 
.DATA
  R1 DB "ENTER THE NUMBER 1: $" 
  ;A DB ?
  R2 DB "ENTER THE NUMBER 2: $"
  ;B DB ?
  R3 DB "ENTER THE NUMBER 3: $"
  ;C DB ?
  R4 DB "ENTER THE NUMBER 4: $"
  ;D DB ?
  R5 DB "ENTER THE NUMBER 5: $"
  ;E DB ?
   
                    
.CODE 
      
MAIN PROC         
    
    MOV AX, @DATA 
    MOV DS, AX
    
    
    MOV AH,9
    LEA DX,R1
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    PRINTN
    
    MOV AH,9
    LEA DX,R2
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
  
    ADD BL,BH
    
     
    PRINTN
   
    MOV AH,9
    LEA DX,R3
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    ADD BL,CL
   
    
    PRINTN
    
    MOV AH,9
    LEA DX,R4
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CH,AL 
    
    ADD BL,CH
    
    
    PRINTN
    
    MOV AH,9
    LEA DX,R5
    INT 21H
     
     MOV AH,1
    INT 21H
    MOV BL,AL
    
    ADD BL,BL
    SUB BL,48
   
    
    MOV AH,2
    MOV DL,BL
    INT 21H 
     
      EXIT:   
       MOV AH, 4CH 
        INT 21H     
       MAIN ENDP     
 
   END MAIN