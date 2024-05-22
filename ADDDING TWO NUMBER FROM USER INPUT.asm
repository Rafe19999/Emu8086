.MODEL SMALL
.STACK 100H

.DATA
    
.CODE
    
     MAIN PROC
        
        MOV AH,1
        INT 21H
        
        MOV BL,AL
        INT 21H
        
        MOV BH,AL
        
        ADD BL,BH
        
        MOV AH,2
        SUB BL,48
        MOV DL,BL
        INT 21H
        
        
        
        
        
        
       MAIN  ENDP
     MOV AH, 4CH
     INT 21H
                
    END MAIN

