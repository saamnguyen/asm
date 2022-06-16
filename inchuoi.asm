#in   chuoi

.data
	chuoi: .asciiz "Xin chao"
.text
	li $v0,4
	la $a0,chuoi
	syscall
	
	