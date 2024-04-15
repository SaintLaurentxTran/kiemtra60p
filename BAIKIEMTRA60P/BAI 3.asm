.MODEL SMALL
.STACK 100
.DATA
    TB1 DB "NHAP VAO 1 CHUOI: $"
    TB2 DB 10,13,"SO KY TU CUA CHUOI LA: $"
    S DB 100 DUP("$")
.CODE

MAIN:
    MOV AX, @DATA
    MOV DS,AX 
    
    
    LEA DX,TB1
    MOV AH,9
    INT 21H 
    
    LEA DX,S 
    MOV AH,10
    INT 21H 
    
    LEA DX,TB2
    MOV AH,9
    INT 21H  
    

    MOV AX,0
    MOV AL,S+1
    MOV CX,0  
    MOV BX,10 
    
LAPDEM1:
    MOV DX,0  
    DIV BX
    PUSH DX 
    INC CX 
    CMP AX,0 
    JNZ LAPDEM1  
   
LAPDEM2: 
    POP DX 
    ADD DX,'0'
    MOV AH,2
    INT 21H
    LOOP LAPDEM2  
    
    MOV AH,4CH
    INT 21H
END MAIN  
END

