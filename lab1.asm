.data
	msg1: .asciiz "Enter first integer: "
	msg2: .asciiz "Enter second integer: "
	out_msg1: .asciiz "The sum of "
	out_msg2: .asciiz " and "
	out_msg3: .asciiz " is: "
	x1: .word 0
	x2: .word 0
	x3: .word 0
.text
.globl main
	main:							# Main Function/Procedure
		# Ask for 1st integer
		la $a0, msg1				
		li $v0, 4
		syscall
		li $v0, 5
		syscall
		move $s0, $v0
		sw $s0, x1					# Store value of $s0 in x1
		
		# Ask for 2nd integer
		la $a0, msg2
		li $v0, 4
		syscall
		li $v0, 5
		syscall
		move $s1, $v0
		sw $s1, x2					# Store value of $s1 in x2
		
		move $a1, $s0				# Move $s0 to $a1 as parameter
		move $a2, $s1				# Move $s1 to $a2 as parameter
		
		jal SUM						# Goto SUM function/procedure
		
		move $s2, $v1
		sw $s2, x3
		
		jal PRINT
	
		li $v0, 10
		syscall
	
	SUM:
		add $v1, $a1, $a2 
		jr $ra
		
	PRINT:
		la $a0, out_msg1
		li $v0, 4
		syscall
		
		lw $a0, x1
		li $v0, 1
		syscall
		
		la $a0, out_msg2
		li $v0, 4
		syscall
		
		lw $a0, x2
		li $v0, 1
		syscall
		
		la $a0, out_msg3
		li $v0, 4
		syscall
		
		lw $a0, x3
		li $v0, 1
		syscall
		
		jr $ra