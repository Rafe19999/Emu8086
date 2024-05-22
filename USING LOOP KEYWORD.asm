INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.CODE
    MAIN PROC
        ;LOOOP KEYWORD WORKS IN REVERSE
        
        ; I-- ;I>=0
        
        
        
       
     MOV CX,5
     
     LEVEL:
        
        PRINTN "THE LOOP IS RUNNING"
        
        LOOP LEVEL
        
        PRINTN "THE LOOP IS STOPPED RUNNING"
        
        
        MOV AH,4CH
        INT 21H
        MAIN ENDP
    END MAIN