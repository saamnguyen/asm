;nhap vao chuoi ky tu
;hien thi Xin chao <chuoi ky tu da nhap>

DSEG segment
    msg1 db "Nhap: $"
    msg2 db "Xin chao: $"
    nl db 10,13,"$"
    max db 255
    len db 0
    string db 255 dup('$') 
DSEG ENDS

CSEG SEGMENT
    ASSUME CS: CSEG, DS: DSEG 

start:
    mov ax,DSEG
    mov ds,ax
    
    ;In msg1
    mov ah,9
    lea dx,msg1
    int 21h
    
    ;Nhap
    mov ah,0Ah
    lea dx,max; dx chua dia chi vung dem ban phim
    int 21h
    
    mov ah,9
    lea dx,nl
    int 21h
    
    ;msg2
    mov ah,9
    lea dx,msg2
    int 21h
    
    ; hienthi string
    mov ah,9
    lea dx,string
    int 21h
    
    mov ah,08h
    int 21h
    
    mov ah,4CH
    int 21h
    
CSEG ends
END start