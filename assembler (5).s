.data
	var_x:    .word    0:1
.text
main:
	li $a0, 18
	sw $a0 0($sp)
	add $sp $sp -4
	li $a0, 3
	lw $t1 4($sp) 
	add $a0 $t1 $a0 
	add $sp $sp 4
	la  $t1, var_x
	sw  $a0, 0($t1)
	li $v0 1
	syscall
	jr $ra  