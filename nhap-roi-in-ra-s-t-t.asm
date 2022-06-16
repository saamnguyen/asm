data segment
    msg db "Nhap: $"
    msg1 db 10,13,"Good morning $"
    msg2 db 10,13,"Good afternoon $"
    msg3 db 10,13,"Good everning $"
    char db ?
ends

code segment
start:
    mov ax,data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,1
    int 21h
    
    mov char,al
    
    mov al,char
    cmp al, 's'
    je @display_msg1
    cmp al,'S'
    je @display_msg1
    
    mov al,char
    cmp al,'t'
    je @display_msg2
    cmp al,'T'
    je @display_msg2
    
    mov al,char
    cmp al,'c'
    je @display_msg3
    cmp al,'C'
    je @display_msg3





@display_msg1:       
    mov ah,9
    lea dx,msg1
    int 21h 
    jmp exit

@display_msg2:
    mov ah,9
    lea dx,msg2
    int 21h
    jmp exit

@display_msg3:
    mov ah,9  
    lea dx,msg3
    int 21h
    jmp exit    
    




exit:
    mov ah,1
    int 21h
    
    mov ax, 4c00h
    int 21h  
    
ends
end start