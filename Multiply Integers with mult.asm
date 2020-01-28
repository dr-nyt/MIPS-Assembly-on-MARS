.data

.text
	addi $t0, $zero, 2000
	addi $t1, $zero, 10
	
	mult $t0, $t1		# $t0 * $t1 => Result gets moved to lo or hi registers
	
	mflo $a0		# Move result of mult from lo register to $a0
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall