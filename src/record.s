	.data
	.align 2
record.a:
	.word 0
	.word 0
	.data
	.align 2
record.b:
	.word 0
	.word 0
	.data
	.align 2
record.c:
	.word 0
	.data
	.align 2
record.d:
	.word 0
	.data
	.align 2
record.e:
	.word 0
	.data
	.align 2
record.f:
	.word 0
	.data
	.align 2
record.g:
	.word 0
	.text
record.print2:
record.print2.framesize=20
	sw $ra -4($sp)
	subu $sp record.print2.framesize
#	move $a0 $a0
L.17:
	move $t0 $a0
	beq $t0 0 _BADPTR
L.1:
#	move $a0 $a0
	beq $a0 0 _BADPTR
L.2:
	addu $t1 $a0 4
	lw $t1 0($t1)
#	move $t1 $t1
	beq $t1 0 _BADPTR
L.3:
#	move $a0 $a0
	beq $a0 0 _BADPTR
L.4:
	addu $t2 $a0 4
	lw $t2 0($t2)
#	move $t2 $t2
	beq $t2 0 _BADPTR
L.5:
	lw $t3 0($t0)
	lw $t0 0($t1)
	addu $t1 $t3 $t0
	addu $t0 $t2 4
	lw $t0 0($t0)
	addu $t0 $t1 $t0
	addu $a0 $t0 48
#	move $a0 $a0
	jal _putchar
L.0:
#	returnSink
	addu $sp record.print2.framesize
	lw $ra -4($sp)
	jr $ra
	.text
record.print:
record.print.framesize=20
	sw $ra -4($sp)
	subu $sp record.print.framesize
#	move $a0 $a0
L.18:
	move $t0 $a0
	beq $t0 0 _BADPTR
L.7:
#	move $a0 $a0
	beq $a0 0 _BADPTR
L.8:
	lw $t1 0($t0)
	addu $t0 $a0 4
	lw $t0 0($t0)
	addu $t0 $t1 $t0
	addu $a0 $t0 48
#	move $a0 $a0
	jal _putchar
L.6:
#	returnSink
	addu $sp record.print.framesize
	lw $ra -4($sp)
	jr $ra
	.text
record_M3:
record_M3.framesize=24
	sw $ra -8($sp)
	sw $s0 -4($sp)
	subu $sp record_M3.framesize
L.19:
	li $a0 4
#	move $a0 $a0
	li $a1 1
#	move $a1 $a1
	jal new
#	move $v0 $v0
	sw $v0 record.e+0
	li $a0 4
#	move $a0 $a0
	li $a1 1
#	move $a1 $a1
	jal new
#	move $v0 $v0
	sw $v0 record.f+0
	li $a0 8
#	move $a0 $a0
	li $a1 1
#	move $a1 $a1
	jal new
#	move $v0 $v0
	sw $v0 record.g+0
	lw $s0 record.g+0
#	move $s0 $s0
	beq $s0 0 _BADPTR
L.9:
	li $a0 8
#	move $a0 $a0
	li $a1 1
#	move $a1 $a1
	jal new
#	move $v0 $v0
	addu $t0 $s0 4
	sw $v0 0($t0)
	lw $t0 record.g+0
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.10:
	li $t1 1
	sw $t1 0($t0)
	lw $t0 record.g+0
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.11:
	addu $t0 $t0 4
	lw $t0 0($t0)
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.12:
	li $t1 2
	sw $t1 0($t0)
	lw $t0 record.g+0
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.13:
	addu $t0 $t0 4
	lw $t0 0($t0)
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.14:
	addu $t1 $t0 4
	li $t0 3
	sw $t0 0($t1)
	lw $a0 record.g+0
#	move $a0 $a0
	jal record.print2
#	returnSink
	addu $sp record_M3.framesize
	lw $s0 -4($sp)
	lw $ra -8($sp)
	jr $ra
	.globl main
	.text
main:
main.framesize=4
	sw $ra -4($sp)
	subu $sp main.framesize
L.20:
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
L.21:
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
L.15:	.asciiz	"Attempt to use a null pointer"
	.text
badPtr:
badPtr.framesize=4
	sw $ra -4($sp)
	subu $sp badPtr.framesize
L.22:
	la $a0 L.15
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
L.16:	.asciiz	"Subscript out of bounds"
	.text
badSub:
badSub.framesize=4
	sw $ra -4($sp)
	subu $sp badSub.framesize
L.23:
	la $a0 L.16
#	move $a0 $a0
	jal _puts
	li $a0 1
#	move $a0 $a0
	jal _exit
#	returnSink
	addu $sp badSub.framesize
	lw $ra -4($sp)
	jr $ra
