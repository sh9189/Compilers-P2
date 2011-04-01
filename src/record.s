	.data
	.align 2
record.bar:
	.word 0
	.text
record.foo:
record.foo.framesize=20
	sw $ra -4($sp)
	subu $sp record.foo.framesize
#	move $a0 $a0
L.7:
	move $t0 $a0
	beq $t0 0 _BADPTR
L.1:
#	move $a0 $a0
	beq $a0 0 _BADPTR
L.2:
	lw $t1 0($t0)
	addu $t0 $a0 4
	lw $t0 0($t0)
	addu $t0 $t1 $t0
	addu $a0 $t0 48
#	move $a0 $a0
	jal _putchar
L.0:
#	returnSink
	addu $sp record.foo.framesize
	lw $ra -4($sp)
	jr $ra
	.text
record_M3:
record_M3.framesize=20
	sw $ra -4($sp)
	subu $sp record_M3.framesize
L.8:
	li $a0 8
#	move $a0 $a0
	li $a1 1
#	move $a1 $a1
	jal new
#	move $v0 $v0
	sw $v0 record.bar+0
	lw $t0 record.bar+0
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.3:
	li $t1 5
	sw $t1 0($t0)
	lw $t0 record.bar+0
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.4:
	addu $t1 $t0 4
	li $t0 2
	sw $t0 0($t1)
	lw $a0 record.bar+0
#	move $a0 $a0
	jal record.foo
#	returnSink
	addu $sp record_M3.framesize
	lw $ra -4($sp)
	jr $ra
	.globl main
	.text
main:
main.framesize=4
	sw $ra -4($sp)
	subu $sp main.framesize
L.9:
	jal record_M3
#	returnSink
	addu $sp main.framesize
	lw $ra -4($sp)
	jr $ra
	.text
new:
new.framesize=16
	sw $ra -16($sp)
	sw $s2 -12($sp)
	sw $s1 -8($sp)
	sw $s0 -4($sp)
	subu $sp new.framesize
	move $s1 $a0
	move $s0 $a1
L.10:
#	move $s1 $s1
#	move $s0 $s0
	addu $a0 $s1 4
#	move $a0 $a0
	jal _malloc
	move $s2 $v0
	sw $s0 0($s2)
	addu $s2 $s2 4
#	move $s2 $s2
	move $a0 $s2
	move $a1 $s1
	jal _bzero
	move $v0 $s2
#	returnSink
	addu $sp new.framesize
	lw $s0 -4($sp)
	lw $s1 -8($sp)
	lw $s2 -12($sp)
	lw $ra -16($sp)
	jr $ra
	.data
	.align 2
L.5:	.asciiz	"Attempt to use a null pointer"
	.text
badPtr:
badPtr.framesize=4
	sw $ra -4($sp)
	subu $sp badPtr.framesize
L.11:
	la $a0 L.5
#	move $a0 $a0
	jal _puts
	li $a0 1
#	move $a0 $a0
	jal _exit
#	returnSink
	addu $sp badPtr.framesize
	lw $ra -4($sp)
	jr $ra
	.data
	.align 2
L.6:	.asciiz	"Subscript out of bounds"
	.text
badSub:
badSub.framesize=4
	sw $ra -4($sp)
	subu $sp badSub.framesize
L.12:
	la $a0 L.6
#	move $a0 $a0
	jal _puts
	li $a0 1
#	move $a0 $a0
	jal _exit
#	returnSink
	addu $sp badSub.framesize
	lw $ra -4($sp)
	jr $ra
