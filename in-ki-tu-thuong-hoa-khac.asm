;viet lai ct bai 3 sao cho ct co the phan biet dc 3 loai ky  tu nhap tu ban phim: ky
;tu hoa, ky tu thuong, ky tu khac  

data segment
    msg db 10,13,"Nhap: $"
    msg1 db 10,13,"Day la ky tu thuong $"
    msg2 db 10,13,"Day la ky tu hoa $"
    msg3 db 10,13,"Day la ky tu khac $"
    char db ?
    status db 0
ends

code segment
start:
    mov ax,data
    mov ds,ax
    
    ;msg 
    mov ah,9
    lea dx,msg
    int 21h
    
    ;Nhap msg
    mov ah,1
    int 21h
    
    ;Gan
    mov char,al
    
    ;in char
    ;mov ah,2
    ;mov dl,char
    ;int 21h
    
    ;so sanh
    mov al,char
    cmp al,'A'
    jb @kitukhac
    
    cmp al,'Z'
    jb @kituhoa
    
    cmp al,'a'
    jb @kitukhac
    
    cmp al,'z'
    jb @kituthuong
    
    jmp exit
    



@kitukhac:
    mov ah,9
    lea dx,msg3
    int 21h
    jmp exit
    
@kituthuong:
    mov ah,9
    lea dx,msg1
    int 21h
    jmp exit

@kituhoa:
    mov ah,9
    lea dx,msg2
    int 21h
    jmp exit    




exit:
     mov ax,1
     int 21h
     
     mov ax,4c00h
     int 21h
ends
end start