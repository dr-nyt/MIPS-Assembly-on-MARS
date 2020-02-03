.data
	prompt: .asciiz "Enter a number: "
	even: .asciiz "Number is even."
	odd: .asciiz "Number is odd."
.text
main:
	# Prints prompt
	la $a0, prompt
	li $v0, 4
	syscall
	
	# Reads integer
	li $v0, 5
	syscall
	
	# Add variables
	move $s0, $v0
	addi $s1, $zero, 2
	
	# Divide by 2 and get the remainder
	div $s0, $s1
	mfhi $s3
	
	# Logic
	beqz $s3, equal	# Check if remainder is equal to zero
	la $a0, odd	
	li $v0, 4
	syscall
	j exit

equal:
	la $a0, even
	li $v0, 4
	syscall

exit:
	li $v0, 10
	syscall