.data

.text
	main:
		addi $s0, $zero, 10
		
		jal increaseNum
		
		move $a0, $s0
		li $v0, 1
		syscall			# Prints 10
	
	li $v0, 10
	syscall
	
	increaseNum:
		# To prevent from modifying the value of $s0 in the main function, we do the following:
		addi $sp, $sp, -4	# We reserve some space in the stack by negating 4 bytes.
		sw $s0, 0($sp)		# Then we store the old value of $s0 to the top of the stack.
		
		addi $s0, $s0, 30
		
		move $a0, $s0
		li $v0, 1
		syscall			# Prints 40
		
		lw $s0, 0($sp)		# We then load back the old value of $s0 from the top of the stack.
		addi $sp, $sp, 4	# We restore the stack by giving back the 4 bytes we reserved.
		
		jr $ra