;Bai2
;nhap so sinh vien hien thi ten
;tinh tong cac pan tu trong chuoi so

.model small
.stack 100
.data
    tbNhapMsv db 10,13, "Nhap MSV: $"
    tbKqMsv db 10,13, "MSV: $"
    tbTen db 10,13, "Ten: Nguyen Van Sam $"
    tbNhapDaySo db 10,13, "Nhap day so vd: 10,12,13: $"
    tbTong db 10,13, "Tong: $" 
    
    strDaySo db 100 dup("$")
    sum dw ?
    strMsv db 100 dup("$")
    
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        ;tbNhapMsv
        mov ah,9
        lea dx,tbNhapMsv
        int 21h
        
        ;nhap
        mov ah,10
        lea dx,strMsv
        int 21h
        
        ;in tbKqMsv
        mov ah,9
        lea dx, tbKqMsv
        int 21h
        
        ;in msv vua nhap
        mov ah,9  
        lea dx,[strMsv+2]
        int 21h
        
        ;in ten
        mov ah,9
        lea dx,tbTen
        int 21h
        
        ;tb nhap day so
        mov ah,9
        lea dx, tbNhapDayso
        int 21h
        
        ;Nhap day so
        mov ah,10
        lea dx,strDaySo
        int 21h
        
        ;tb tong
        mov ah,9
        lea dx,tbTong
        int 21h
        
        ;tinh toan
        mov cx,0
        mov cl,[strDaySo + 1]
        lea si,[strDaySo + 2]
        mov bx,10
        mov ax,0
        mov sum,ax
        
        loop1:
        mov dx,[si]
        cmp dl, ','
        je next1
        mul bx
        mov dx,[si]
        mov dh,0
        sub dl,48
        add ax,dx
        jmp next2
        
        next1:
        add sum,ax
        mov ax,0
        
        next2:
        inc si
        loop loop1
        
        add sum,ax
        mov ax,sum
        call chuyenSoThanhChu
        
        mov ah,4ch
        int 21h
        
        
        
        
        
        
        
   main endp 
    
   chuyenSoThanhChu proc
    mov bx,10
    mov cx,0
    chia10:
    mov dx,0
    div bx
    push dx
    inc cl
    cmp ax,0
    je hienthi
    jmp chia10
    hienthi:
    pop dx
    add dl,48
    mov ah,2
    int 21h
    loop hienthi
    ret
    
  chuyenSoThanhChu endp
end   