.data

.text
	main:
		addi $a1, $zero, 50
		addi $a2, $zero, 100
		
		jal addNumbers
		
		move $a0, $v1		# Take returned number from $v1 and put it in $a0
		li $v0, 1
		syscall
		
		
	
	li $v0, 10
	syscall
	
	addNumbers:
		add $v1, $a1, $a2	# Add number and put them in $v1 as it is used for return
		jr $ra