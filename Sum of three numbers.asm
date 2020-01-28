.data
	prompt: .asciiz "Enter three numbers: \n"
	answer: .asciiz "Sum of three numbers is: "

.text
.globl main
main:
	la $a0, prompt
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	li $v0, 5
	syscall
	move $t1, $v0
	li $v0, 5
	syscall
	move $t2, $v0
	
	addu $t0, $t0, $t1
	addu $t0, $t0, $t2
	
	move $a0, $t0
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall