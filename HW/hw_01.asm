.data
	first_int: .asciiz "Enter first integer: "
	second_int: .asciiz "Enter second integer: "
	output: .asciiz "The output is: "
.text
main:
	# Get first int
	la $a0, first_int
	li $v0, 4
	syscall
	li $v0, 5
	syscall
	move $s0, $v0		# i = read integer()
	
	# Get second int
	la $a0, second_int
	li $v0, 4
	syscall
	li $v0, 5
	syscall
	move $s1, $v0		# j = read integer()
	
	move $s3, $zero		# x = 0
	
	bgt $s0, $s1, greater	# if(i > j)
	blt $s0, $s1, less	# if(i < j)
	beq $s0, $s1, equal	# if(i == j)
	
greater:
	sub $s3, $s0, $s1	# x = i - j
	j print
	
less:
	add $s3, $s0, $s1	# x = i + j
	j print

equal:
	mul $s3, $s0, $s1	# x = i * j
	j print
	
print:
	la $a0, output
	li $v0, 4
	syscall
	move $a0, $s3
	li $v0, 1
	syscall			# print(x)
	j exit
	
exit:
	li $v0, 10
	syscall
	
	
