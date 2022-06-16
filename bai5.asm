#bai4 - nhap so nguyen

.data
.text
	addi $v0,$zero,5 #$v0 = 0 + 5
	syscall
	#trong bai thi thuong copy $v0 ra thanh ghi khac vi trong  bai hay goi $v0 nen se bi doi gia tri
	move $t2,$v0