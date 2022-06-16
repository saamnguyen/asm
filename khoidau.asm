.model small
.stack 100h    ;kich thuoc stack         


.data          ; thanh ghi data    
    tb1 db "Hello ASM $"
.code          ;code 
                     

main proc  
    mov ax,@data
    mov ds,ax   
    
    
;mov ah,1
;int 21h    ;nhap 1 ki tu vao ban phim roi ghi vao thanh ghi AL     

;mov ah,2    ;hien thi ki tu ra man hinh
;mov dl,al    ; luu a vao thanh ghi dl
;int 21h    

;mov ah,9
;lea dx,tb1
;int 21h 
;top: 
;mov ah,1
;int 21h
;cmp al,"a"
;jne top  

;mov bl,4
;mov ax,203
;mul bl ; ax = ax * bl    
;div bl ; al = ax / bl, ah = ax % bl    

;mov ax,15 ;chuyen vao thanh ghi ah = 00000000, al = 00001111
 ; 1 AND 1 = 1
;1 AND 0 = 0
;0 AND 1 = 0
;0 AND 0 = 0
;and ax,0011b ;

                                         ;0011 ->no sexoa di 2 bit cuoi
;mov ax,200
;or ax,0011b
;1 OR 1 = 1
;1 OR 0 = 1
;0 OR 1 = 1
;0 OR 0 = 0

mov cx,5 ;bien dem
mov bx,0  ;gan bx

top:
 adc bx,1  
 push bx  ;chi su dung cho thanh ghi 16bit
loop top  
pop ax ; lay gia tri ra thanh ghi ax
pop bx
pop cx
pop dx        

                                                        
end main


