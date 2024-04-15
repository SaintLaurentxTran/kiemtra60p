.MODEL SMALL
.STACK 100H
.DATA
    THONGBAO1 DB 'XIN CHAO, TOI TEN LA TRAN QUOC THANH$ '
    
    KYTU DB ?
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX  
        
        MOV AH,09H
        LEA DX,THONGBAO1
        INT 21H
             
        MOV AH,02H
        INT 21H
    MAIN ENDP
    END MAIN