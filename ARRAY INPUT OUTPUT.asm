INCLUDE 'EMU8086.INC'
.MODEL SMALL 
.STACK 100H
.DATA
 NUMBER DB  5 DUB(?)
.CODE 
    
    
    MAIN PROC
     
         MOV AX,@DATA
         MOV DS,AX
     
    
       
        
       XOR BX,BX 
       MOV CX,5
       MOV AH,1
       
       
       
            
    FOR1: 
        INT 21H
       
        MOV NUMBER[BX],AL 
        INC BX
     LOOP FOR1
          
          
          
       XOR BX,BX 
        MOV CX,5 
       MOV AH,2 
       PRINTN
    FOR2:
       
        MOV DL,NUMBER[BX] 
        INT 21H
        INC BX
     LOOP FOR2
        
       
       
    MOV AH,4CH
     INT 21H
     MAIN ENDP
    
    
END MAIN
        
        
        
        
     