#bai1 - cach gan so nguyen cho thanh ghi
#gan 10 cho thanh ghi $t1
#gan 15 cho thanh ghi $t2
#gan 20 cho thanh ghi $t3
.data #phan de khai bao du lieu
	number: .word 10
.text #code chinh, luong code vao
	lw $t1,number #lay gia tri cua nhan number gan vao thanh ghi $t1
	li $t2,15 #$t2 = 15
	addi $t3,$zero,20 #$t3 = 0 + 20