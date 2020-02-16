.data 
	data: .word 25, 10, 15, 4, 16, -3, 38, 72, 16

.text
main:
	move $s0, $zero # s0 will be the running sum
	la $s2, data # Address of first of the values
	addi $s3, $zero, 10 # there are 10 Numbers in array

loop:
	beq $s3, $zero, done # stop after adding all numbers
	lw $t1, 0($s2) # get the value pointed to by s2
	add $s0, $s0, $t1 # add next value to sum
	addi $s2, $s2, 4 # advance the pointer in the array
	# (each element is a word = 4 bytes)
	addi $s3, $s3, -1 # decrease number of numbers left
	j loop # go back to top

done:
	li $v0, 10
	syscall