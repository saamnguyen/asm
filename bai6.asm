#bai 5 - nhap chuoi

.data
	chuoi: .asciiz #tao 1 const
.text
	li $v0,8
	la $a0,chuoi #load chuoi vao thanh ghi a0 (address) luu dia chi
	li $a1,20 #gan length toi da co the nhap 20 -> 19
	syscall