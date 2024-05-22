.MODEL SMALL 
.STACK 100H    
INCLUDE 'EMU8086.INC' 
.DATA 
    SUM DB 0  ;VARIABLE DEC  
                    
.CODE 
      
MAIN PROC         
    
    MOV AX, @DATA 
    MOV DS, AX 
     
    
     
    ;PRINTN 
    MOV AL ,10 
     
    MOV BL ,1 
    
     
    FOR: 
    CMP BL,AL 
    JG EXIT_LOOP 
    ADD SUM, BL 
    INC BL 
    JMP FOR 
     
    EXIT_LOOP:   
     
    PRINTN "THE SUM IS: "  
    MOV CL,SUM 
    ADD CL,48 
     
    MOV AH,2 
    MOV DL,CL 
    INT 21H 
     
MOV AH, 4CH 
INT 21H     
MAIN ENDP     
 
END MAIN