.data
	name_prompt: .asciiz "Please type your name: "
	out_msg: .asciiz "Your name in capitals is: "
	in_name: .space 31
	
.text
.globl main
main:
	la $a0, name_prompt
	li $v0, 4
	syscall			# Print name_prompt string.
	la $a0, in_name		#Address of in_name
	li $a1, 31
	li $v0, 8
	syscall 		#Read string and put in $a0
	la $a0, out_msg
	li $v0, 4
	syscall			# Print out_msg
	la $t0, in_name

loop:
	lb $t1, ($t0)		# Load a byte from $t0 to $t1
	beqz $t1, exit_loop	# If we reached end of string, exit.
	blt $t1, 'a', no_change	# If string is already capital or special.
	bgt $t1, 'z', no_change
	addiu $t1, $t1, -32 	# Substract 32 from small string to get capital string.
	sb $t1, ($t0)

no_change:
	addiu $t0, $t0, 1	# Increment by 1
	j     loop		# Go back to loop
	
exit_loop:
	la $a0, in_name
	li $v0, 4
	syscall			# Print in_name
	li $v0, 10
	syscall