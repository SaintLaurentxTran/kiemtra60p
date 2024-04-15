.MODEL SMALL
.STACK 100
.DATA 
     STR DB 50 DUP('$') 
     TB1 DB 10,13,'CHUOI DA DUOC DAO NGUOC: $' 
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX 
        
        LEA DX,STR
        MOV AH,10
        INT 21H  
        
        LEA DX, TB1
        MOV AH,9
        INT 21H
        
        MOV CL,[STR + 1] 
        LEA SI,[STR + 2] 
        LAP:
            PUSH [SI]
            INC SI  
            LOOP LAP
        
        MOV CL, [STR + 1]      
        LAP2: 
            POP DX   
            MOV AH,2 
            INT 21H
            LOOP LAP2
        
		MOV AH, 4CH
		INT 21H
    MAIN ENDP
END

