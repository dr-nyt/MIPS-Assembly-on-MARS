.data
	prompt: .asciiz "Enter an integer to count to: "
	output: .asciiz "Total sum is: "
	
.text
main:
	# Print prompt
	la $a0, prompt
	li $v0, 4
	syscall
	
	# Get integer
	li $v0, 5
	syscall
	move $s0, $v0			# Range
	
	addi $t0, $zero, 0		# i = 0
	addi $s1, $zero, 0		# sum = 0
	
	loop:
		addi $t0, $t0, 1	# i = i + 1
		add $s1, $s1, $t0	# sum = sum + i
		bne $t0, $s0, loop	# Loop back
	
	# Print output string
	la $a0, output
	li $v0, 4
	syscall
	
	# Print Total Sum
	move $a0, $s1
	li $v0, 1
	syscall
	
	j exit

exit:
	li $v0, 10
	syscall
	
