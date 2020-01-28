.data
	msg: .asciiz "Hi, How are you?\n"
.text
	main:
		addi $s0, $zero, 10
		addi $s1, $zero, 14
		
		bgt $s0, $s1, displayMsg
		return:
	
	li $v0, 10
	syscall
	
	displayMsg:
		la $a0, msg
		li $v0, 4
		syscall
		
		j return