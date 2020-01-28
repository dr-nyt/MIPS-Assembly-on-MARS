.data
	array: .space 12	# To store ints, I need 4 bytes each so to store 3 ints, I need 12 bytes
.text
	main:
		# Create three integers
		addi $s0, $zero, 4
		addi $s1, $zero, 10
		addi $s2, $zero, 14
		
		addi $t0, $zero, 0 		# Index = 0
		
		sw $s0, array($t0)		# array[Index] = $s0
		addi $t0, $t0, 4		# Append index by 4 because each integer takes 4 bytes of space. Index = 4
		sw $s1, array($t0)		# array[Index] = $s0
		addi $t0, $t0, 4
		sw $s2, array($t0)		# array[Index] = $s0
		
		lw $a0, array($zero)		# $a0 = array[0]
		li $v0, 1
		syscall
			
	
	li $v0, 10
	syscall