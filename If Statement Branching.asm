.data
	msg: .asciiz "The numbers are equal.\n"
	msg2: .asciiz "Nothing happened.\n"

.text
	main:
		addi $t0, $zero, 5
		addi $t1, $zero, 20
		
		beq $t0, $t1, numEqual
		bne $t0, $t1 numNotEqual
		
		return_here:		# This label created for the branches to jump back to.
	
		li $v0, 10
		syscall
	
	numEqual:
		la $a0, msg
		li $v0, 4
		syscall
		
		j return_here
	
	numNotEqual:
		la $a0, msg2
		li $v0, 4
		syscall
		
		j return_here
