;AND, OR, XOR, NOT
INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
    COUNT DB 0

.CODE   
PROC MAIN
    MOV AX, @DATA
    MOV DS, AX
        
    MOV BL, 0 ;CLEAR
    MOV AH, 1
    
    FOR:
        INT 21H
        CMP AL, 0DH
        JE END_FOR
        
        SHL BL, 1
        SUB AL, 48
        OR BL, AL  
        INC COUNT
        
        JMP FOR
      
    END_FOR:
    PRINTN
    PRINTN
    
    MOV CL, 8
    SUB CL, COUNT 
    SHL BL, CL
    
    MOV AH, 2  
    MOV CL, 0
    
    FOR2:
    CMP CL, COUNT
    JE END_FOR2
    RCL BL, 1
    INC CL
    JC CARRY
    MOV DL, '0'
    INT 21H
    JMP OTHER
    
    CARRY:
    MOV DL, '1'
    INT 21H 
    
    OTHER:
    JMP FOR2
    
    END_FOR2:
     MOV AH,4CH
     INT 21H
     MAIN ENDP
END MAIN