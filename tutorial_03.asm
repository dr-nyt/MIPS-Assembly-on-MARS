.data
	prompt: .asciiz "Please enter three numbers: \n"
	sum_msg: .asciiz "The sum is: "

.text
.globl main
main:
	la $a0, prompt	# Display prompt string
	li $v0, 4
	syscall
	li $v0, 5	# Read 1st number
	syscall
	move $t0, $v0	# Store 1st number in $t0
	li $v0, 5	# Read 2nd number
	syscall
	move $t1, $v0	# Store 2nd number in $t1
	li $v0, 5	# Read 3rd number
	syscall
	move $t2, $v0	# Store 3rd number in $t2
	
	addu $t0, $t0, $t1	# $t0 = $t0 + $t1
	addu $t0, $t0, $t2	# $t0 = $t0 + $t2
	
	la $a0, sum_msg	# Add sum_msg to $a0 to print
	li $v0, 4	# Print string @ $a0
	syscall
	
	move $a0, $t0	# Add total to $a0 to print
	li $v0, 1	#Print integer @ $a0
	syscall