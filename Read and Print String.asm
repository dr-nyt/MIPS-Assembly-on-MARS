.data
	str: .space 10	# Array of 10 bytes

.text
.globl main
main:
	la $a0, str	# Assign $a0 the address of str
	li $a1, 10	# Limit max string length @ $a1
	li $v0, 8	# Read for string
	syscall		# String returned to $a0
	li $v0, 4	# Print string @ $a0
	syscall
	li $v0, 10	# Exit
	syscall