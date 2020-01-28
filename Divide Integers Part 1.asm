.data

.text
	addi $t0, $zero, 30
	addi $t1, $zero, 5
	
	div $a0, $t0, $t1
	
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall