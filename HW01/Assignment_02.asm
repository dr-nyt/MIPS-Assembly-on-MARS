.data
	prompt: .asciiz "Enter an integer to count to: "
	enter: .asciiz "\n"
	
.text
main:
	# Print prompt
	la $a0, prompt
	li $v0, 4
	syscall
	
	# Get integer
	li $v0, 5
	syscall
	move $s0, $v0
	
	addi $t0, $zero, 1		# i = 1
	
	loop:
		# Print i
		move $a0, $t0
		li $v0, 1
		syscall
		
		# Add Space
		la $a0, enter
		li $v0, 4
		syscall
		
		# Logic
		beq $t0, $s0, exit	# Exit on complete
		addi $t0, $t0, 1	# i += 1
		j loop				# Loop back

exit:
	li $v0, 10
	syscall
	
