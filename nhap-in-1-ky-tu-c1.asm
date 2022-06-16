;su dung ham 7 ngat 21h de nhan ky tu ban phim, roi hien thi lai
.model small ;kieu bo nho
.stack 100 ;stack khai bao

.data
     tem db ? ;so nhap
     str1 db "Nhap ky tu: $"
     str2 db 10,13,"Ky tu nhan duoc la: $"; 10,13 xuong dong

.code
    main proc 
        mov ax,@data
        mov ds,ax
        
        ;hien thi str1
        mov ah,9
        lea dx,str1
        int 21h
        
        ;nhap ky tu tem
        mov ah,7
        int 21h 
        
        ;gan ky tu tem
        mov tem,al
        
        ;hien thi key tu vua nhap trong str1
        mov ah,2
        mov dl,tem
        int 21h
        
       
        
        ;hien thi str2
        mov ah,9
        lea dx,str2
        int 21h
        
        ;in ky tu tem
        mov ah,2
        mov dl,tem
        int 21h
          
        ;ham ket thuc  
        mov ah,4CH
        int 21h
        
        
   
     main endp
    end main

   
           
       

