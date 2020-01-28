.data
	msg: .asciiz "Number is less.\n"
	error: .asciiz "Number is not less.\n"
.text
	main:
		addi $t0, $zero, 300
		addi $t1, $zero, 500
		
		slt $s0, $t0, $t1	# This will set $s0 to 1 if true or 0 if false.
		bne $s0, $zero, printMsg
		beq $s0, $zero, printError
		returnFromMsg:
	
	li $v0, 10
	syscall
	
	printMsg:
		la $a0, msg
		li $v0, 4
		syscall
		
		j returnFromMsg
	
	printError:
		la $a0, error
		li $v0, 4
		syscall
		
		j returnFromMsg