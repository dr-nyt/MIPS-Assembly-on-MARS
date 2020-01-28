.data

.text
	addi $s0, $zero, 4
	
	sll $t0, $s0, 2		# The 2 at the end is the power for 2. In this case it is 2^2 = 4. If the last number was 3 then it would be 2^3 = 8
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 10
	syscall