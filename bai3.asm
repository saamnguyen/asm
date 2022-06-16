#bai3 - cong tru nhan chia

.data

.text
	li $t1,20 #t1=20
	li $t2,3#t2=10
	
	#phep cong
	#3 cach
	#c1
	add $t3,$t1,$t2 #t3 = t1 + t2
	
	#tru
	sub $t4,$t1,$t2
	
	#mul
	mul $t5,$t1,$t2
	
	#div
	div $t1,$t2 #no se luu thuong va phan du o thanh ghi hi, ho o duoi
	#nhung no se k cho phep thao tac tru tiep tren thanh ghi hi va lo
	mfhi $t6
	mflo $t7