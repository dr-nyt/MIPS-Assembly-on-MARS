.data
	str: .space 10
	str2: .asciiz "hi"

.text
.globl main
main:		
	la $a0, str	# $a0 = address of str
	li $a1, 10	# $a1 = max string length
	li $v0, 8	# Read string
	syscall
	la $a0, str2	#Chnage the output before printing
	li $v0, 4	#Print String @ $a0
	syscall
	li $v0, 10	#Exit
	syscall