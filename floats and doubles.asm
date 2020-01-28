.data
	PI: .float 3.14
	doub: .double 7.304
	space: .asciiz "\n"
.text
	li $v0, 2
	lwc1 $f12, PI	# Load float onto coprocessor 1
	syscall
	
	li $v0, 4
	la $a0, space
	syscall
	
	li $v0, 3
	ldc1 $f12, doub	# Load double onto coprocessor 1
	syscall
	
	li $v0, 10
	syscall
	
