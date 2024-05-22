INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
    STORE_AX DW ?
    STORE_DX DW ?
    
.CODE

 MAIN  PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AX,10
    MOV BX,9 
    
    MUL BX
    
    
    
  
    MOV STORE_DX,DX
    MOV STORE_AX,AX
    CALL PRINT_PRODUCT
    
    
    
    MOV AH,4CH
    INT 21H
    
   MAIN ENDP
 
 PRINT_PRODUCT PROC
    
    MOV BX,STORE_DX
    CALL PRINT_HEX
    PRINT " "
    MOV BX,STORE_AX
    CALL PRINT_HEX
    RET
 PRINT_PRODUCT ENDP
 
 
 PRINT_HEX PROC
    
    MOV CX,4
    MOV AH,2
    
    FOR:
    
      MOV DL,BH
      SHR DL,4
      SHL BX,4
       
      CMP DL,10
      JGE LETTER2
      
      
      ADD DL,48
      INT 21H
      JMP END_FOR
      
    LETTER2:
      ADD DL,55
      INT 21H
      
    END_FOR:
      LOOP FOR
      
      RET
  PRINT_HEX ENDP
 END MAIN