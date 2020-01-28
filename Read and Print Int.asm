.text
.globl main
main:
	li $v0, 5	# Read int
	syscall
	move $a0, $v0	# Move read int to $a0
	li $v0, 1	# Print int @ $a0
	syscall
	li $v0, 10	# Exit
	syscall