.data
	space: .asciiz "\n"
.text
	addi $t0, $zero, 30
	addi $t1, $zero, 23
	
	# div $a0, $t0, 10
	div $t0, $t1		# $t0 / $t1 => Quotient put in lo and Remainder in hi
	
	mflo $a0		# Move from lo to $a0
	mfhi $s0		# Move from hi to $a0
	
	li $v0, 1
	syscall
	
	la $a0, space
	li $v0, 4
	syscall
	
	move $a0, $s0
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall