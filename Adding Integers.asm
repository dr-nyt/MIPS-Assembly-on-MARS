.data:
	num1: .word 5		# Integers are stored as words
	num2: .word 10

.text
	lw $t0, num1		# Load word(int) to $t0
	lw $t1, num2
	
	add $t2, $t0, $t1
	
	li $v0, 1
	add $a0, $zero, $t2	# Another way to move
	syscall
	
	li $v0, 10
	syscall