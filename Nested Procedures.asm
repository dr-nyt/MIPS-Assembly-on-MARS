.data

.text
	main:
		addi $s0, $zero, 10
		
		jal increaseNum
		
		jal print
	
	li $v0, 10
	syscall
	
	increaseNum:
		addi $sp, $sp, -8
		sw $s0, 0($sp)
		sw $ra, 4($sp)		# Store the original return address in second place of the reserved stack
		
		addi $s0, $s0, 30
		
		# Nested Procedure
		jal print
		
		lw $s0, 0($sp)
		lw $ra, 4($sp)		# Restore the original return address from the stack where it was stored
		addi $sp, $sp, 8
		
		jr $ra
	
	print:
		move $a0, $s0
		li $v0, 1
		syscall
		
		jr $ra