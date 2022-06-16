  DSEG segment
    msg1 db "Input: $"
    newline db 10,13,"$"
    msg2 db "Output: $"
    char db ?
  DSEG ends
  
  CSEG segment 
    ASSUME CS: CSEG
  
  start:
    
    ;neu khai bao bien thi bat buoc phai co dong duoi, k khai bao thi k can
    mov ax,DSEG
    mov ds,ax
    
    ;In msg1
    mov ah,9
    lea dx,msg1
    int 21h
    
    ;Nhap ky tu 1
    mov ah,7
    int 21h
    
    ;Gan char vua nhap cho char
    mov char,al
    
    ;In char do cung voi msg1
    mov ah,2
    mov dl,char
    int 21h
    
    ;xuong dong
    mov ah,9
    lea dx,newline
    int 21h
    
    ;In msg2
    mov ah,9
    lea dx,msg2
    int 21h
    
    ;In char
    mov ah,2
    mov dl,char
    int 21h
    
    ;Dung chuong trinh doi tu ban phim
    mov ah,4ch
    int 21h
CSEG ends

END start  
    
    
    
    
    
      