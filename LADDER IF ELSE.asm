INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.CODE
   MAIN PROC
     
     MOV AH,69
     
     
      CMP AH,100
      JGE IF1
      
      CMP AH,80
      JGE IF2
      
      CMP AH,70
      JGE IF3
      
      CMP AH,60
      JGE IF4
      
      CMP AH,50
      JGE IF5
      
      CMP AH,40
      JGE IF6
      JMP ELSE
      
      IF1:
        PRINTN "THE NUMBER IS GREATER OR EQUAL 100"
        JMP EXIT
        
        IF2:
        PRINTN "THE NUMBER IS GREATER OR EQUAL 80"
        JMP EXIT
        
        IF3:
        PRINTN "THE NUMBER IS GREATER OR EQUAL 70"
        JMP EXIT
        
        IF4:
        PRINTN "THE NUMBER IS GREATER OR EQUAL 60"
        JMP EXIT
        
        IF5:
        PRINTN "THE NUMBER IS GREATER OR EQUAL 50"
        JMP EXIT
        
        IF6:
        PRINTN "THE NUMBER IS GREATER OR EQUAL 40"
        JMP EXIT
        
        
      ELSE:
          PRINTN "THE NUMBER IS BELOW 40"
      
     EXIT:
        MOV AH,4CH
        INT 21H