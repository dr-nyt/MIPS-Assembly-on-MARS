.data
	message: .asciiz "Hello there. \nMy name is dr_nyt. \n"
.text
	main:
		jal displayMessage
		addi $a0, $zero, 5
		li $v0, 1
		syscall
	
	li $v0, 10	
	syscall
	
	displayMessage:
		la $a0, message
		li $v0, 4
		syscall
		
		jr $ra			# Go back to the function that called it.
