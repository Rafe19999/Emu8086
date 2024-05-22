INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
 N DB "ENTER THE VALUE OF N: $" 
 M DB ?
 
.CODE
      MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,9
        LEA DX,N
        INT 21H
        
        MOV AH,1
        INT 21H
        MOV M,AL
        
        
        
        MOV BH,1
       
        ADD BH,48
        PRINTN
        
        START:
        CMP BH,M
        JG EXIT
        
        MOV AH,2
        MOV DL,BH
        INT 21H
        PRINTN
        
        INC BH
        JNE START
        
        
        
        
        
        
        EXIT:
        MOV AH,4CH
        INT 21H
        MAIN ENDP
      END MAIN
        
         
         
         