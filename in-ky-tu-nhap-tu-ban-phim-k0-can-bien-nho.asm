   ;nhap mot ky tu tu ban phim va hien thi lai
;khong dung bien phu 

.model small
.stack 50
.data
    str1 db 10,13,"Input: $"
    str2 db 10,13,"Output: $"
    
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        ;In str1
        mov ah,9
        lea dx,str1
        int 21h
        
        ;Nhap
        mov ah,1
        int 21h
        
        ;Luu ky tu
        mov bl,al
        
       
        
        ;In str2
        mov ah,9
        lea dx,str2
        int 21h 
        
        ;In ky tu
        mov ah,2
        mov dl,bl
        int 21h
        
        ;Ket thuc
        mov ah,4CH
        int 21h
        
   main endp
    end main
        
           