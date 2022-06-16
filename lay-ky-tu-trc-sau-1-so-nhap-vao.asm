DSEG segment
    msg1 db "Nhap ky tu: $"
    msg2 db "Ky tu truoc: $"
    msg3 db "Ky tu sau: $"
    newline db 10,13,"$"
    char db ?
DSEG ends

CSEG segment
    ASSUME CS: CSEG

start:
    mov ax,DSEG
    mov ds,ax
    
    ;In msg1
    mov ah,9
    lea dx,msg1
    int 21h
    
    ;Nhap 
    mov ah,1
    int 21h 
    
    ;Gan
    mov char,al
    
    ;In /n
    mov ah,9
    lea dx,newline
    int 21h
    
    ;In msg2
    mov ah,9
    lea dx,msg2
    int 21h
    
    ; before
    mov ah,2
    mov dl,char
    dec dl
    int 21h
    
    ;In /n
    mov ah,9
    lea dx,newline
    int 21h 
    
    ;In msg3
    mov ah,9
    lea dx,msg3
    int 21h
    
    ;after
    mov ah,2
    mov dl,char
    inc dl
    int 21h
    
    ;Dung nhan tu ban phim
    mov ah,8h
    int 21h  
    
    ;Thoat ct
    mov ah,4ch
    int 21h
    
    
    


CSEG ends
END start