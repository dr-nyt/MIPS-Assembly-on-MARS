.data

.text
	addi $s0, $zero, 10	# Another way to generate values
	addi $s1, $zero, 4
	
	mul $t0, $s0, $s1	# $t0 = $s0 * $s1
	
	move $a0, $t0
	li $v0, 1
	syscall