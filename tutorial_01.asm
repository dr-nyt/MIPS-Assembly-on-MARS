.text
.globl main
main:
	li $v0, 5	# Read Integer
	syscall		# $v0 = value read from user
	move $a0, $v0	# $a0 = $v0
	li $v0, 1	# Print Integer
	syscall		# Prints $a0