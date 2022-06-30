;Bai1
;Viet ct hop ngu voi cac chuc nang sau:
;a. nhap msv r in ten cua minh
;b. Tinh n! trong do n nhap tu ban phim

.model small
.stack 100
.data
    nhapMSV db "Nhap ma sinh vien: $"
    kqMSV db 13,10, "Ma sinh vien: $"
    nhapN db 13,10, "Nhap N: $"
    kqGiaiThua db 13,10, "n! = $"
    ten db 13,10, "Ten: Nguyen Van Sam"
    MSV db 100 dup("$")
    
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        ;In nhapMSV
        mov ah,9
        lea dx,nhapMSV
        int 21h
        
        ;nhap vao MSV
        mov ah,10
        lea dx,MSV
        int 21h
        
        ;in kqMSV
        mov ah,9
        lea dx,kqMSV
        int 21h
        
        ;in MSV
        mov ah,9
        lea dx, [MSV + 2]
        int 21h
        
        ;in ten
        mov ah,9
        lea dx,ten
        int 21h 
               
               
        ;in nhapN
        mov ah,9
        lea dx,nhapN
        int 21h
        
        ;nhap N
        mov ah,1
        int 21h
        
        ;sub
        sub al,48
        mov cx,0
        mov cl,al
        
        ;In kqGiaiThua
        mov ah,9
        lea dx,kqGiaiThua
        int 21h
        
        ;tinh toan
        mov ax,1
        mov bx,1
        
        giaithua:
        mul bx
        inc bx
        loop giaithua
        
        
        call chuyenSoThanhChu
        
        mov ah,4ch
        int 21h
        
    main endp   
    chuyenSoThanhChu proc
        mov cx,0
        mov bx,10
        chia10:
        mov dx,0
        div bx
        push dx
        inc cx
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