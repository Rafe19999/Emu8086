INCLUDE 'EMU8086.INC'
.MODEL SMALL 
.STACK 100H
.DATA
 NUMBER DW  65,66,67,68 
.CODE 
    
    
    MAIN PROC
     
         MOV AX,@DATA
         MOV DS,AX
     
    
       LEA SI,NUMBER
        
        
       MOV CX,5
       MOV AH,2
       
    FOR:
       MOV DL,[SI] 
       
       INT 21H
       ADD SI,2   
     LOOP FOR  
    
       
       
    MOV AH,4CH
     INT 21H
     MAIN ENDP
    
    
END MAIN
        