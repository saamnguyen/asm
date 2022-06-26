;viet ct nhap tu ban phim, sau do in ra man hinh lan luot cac ky tu nhan dc den z
;sao cho giua cac ky tu co 1 khoang trong

.model small
.stack 50
.data
    msg db 10,13,"Input: $"
    msg1 db 10,13,"Output: $"
    space db " $"
    char db ?

.code
    main proc
        mov ax,data
        mov ds,ax
        
        ;msg
        mov ah,9
        lea dx,msg
        int 21h
        
        ;input
        mov ah,1
        int 21h
        
        ;gan
        mov char,al
        
        ;output
        mov ah,9
        lea dx,msg1
        int 21h
        
lap:    
        ;++1
        inc char
        cmp char,'z'   ;ss
        jg thoat       ;char == z exit
        
        mov ah,9
        lea dx,space   ;in space
        int 21h
           
        mov ah,2
        mov dl,char    ;in char
        int 21h
        jmp lap        ;qay lai lap neu chua == z
                       


thoat:
        mov ah,4ch 
        int 21h 
        
        
    main endp
    end main