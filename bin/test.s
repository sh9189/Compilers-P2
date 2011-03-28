	.data
	.align 2
ROOT:
	.data
	.align 2
test.Foo:
	.data
	.align 2
test.bar:
	.word 0
	.text
test.foo:
test.foo.framesize=20
	sw $ra -4($sp)
	subu $sp test.foo.framesize
#	move $a0 $a0
L.5:
	move $t0 $a0
	beq $t0 0 _BADPTR
L.1:
#	move $a0 $a0
	beq $a0 0 _BADPTR
L.2:
	lw $t1 0($t0)
	lw $t0 4($a0)
	addu $t0 $t1 $t0
	addu $a0 $t0 48
#	move $a0 $a0
	jal _putchar
L.0:
#	returnSink
	addu $sp test.foo.framesize
	lw $ra -4($sp)
	jr $ra
	.text
test_M3:
test_M3.framesize=20
	sw $ra -4($sp)
	subu $sp test_M3.framesize
L.6:
	li $a0 8
#	move $a0 $a0
	la $a1 test.Foo
#	move $a1 $a1
	jal new
#	move $v0 $v0
	sw $v0 test.bar+0
	lw $t0 test.bar+0
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.3:
	li $t1 4
	sw $t1 0($t0)
	lw $t0 test.bar+0
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.4:
	li $t1 5
	sw $t1 4($t0)
	lw $a0 test.bar+0
#	move $a0 $a0
	jal test.foo
#	returnSink
	addu $sp test_M3.framesize
	lw $ra -4($sp)
	jr $ra
