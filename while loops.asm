.data
	msg: .asciiz "While Loop Ended.\n"
	newLine: .asciiz "\n"
.text
	main:
		addi $t0, $zero, 0		# index = 0
		while:
			bgt $t0, 10, exit	# while(index > 10)
			jal print
			addi $t0, $t0, 1	# index++
			j while				# Go back to the start of the while label
		
		exit:
			la $a0, msg
			li $v0, 4
			syscall
	
	li $v0, 10
	syscall
	
	print:
		move $a0, $t0
		li $v0, 1
		syscall
		
		la $a0, newLine
		li $v0, 4
		syscall
		
		jr $ra