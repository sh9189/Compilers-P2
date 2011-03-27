	.data
	.align 2
ROOT:
	.data
	.align 2
Queens.Queens:
	.word Queens.Init
	.word Queens.Run
	.word Queens.PrintBoard
	.data
	.align 2
Queens.q:
	.word 0
	.text
Queens.Init:
Queens.Init.framesize=28
	sw $ra -12($sp)
	sw $s1 -8($sp)
	sw $s0 -4($sp)
	subu $sp Queens.Init.framesize
	move $s0 $a0
L.100:
	li $s1 8
#	move $s1 $s1
#	move $s0 $s0
	beq $s0 0 _BADPTR
L.1:
#	move $s1 $s1
	sll $a0 $s1 2
#	move $a0 $a0
	move $a1 $s1
	jal new
	sw $v0 0($s0)
#	move $s0 $s0
	beq $s0 0 _BADPTR
L.2:
#	move $s1 $s1
	sll $a0 $s1 2
#	move $a0 $a0
	move $a1 $s1
	jal new
	sw $v0 4($s0)
#	move $s0 $s0
	beq $s0 0 _BADPTR
L.3:
	addu $t0 $s1 $s1
	subu $a1 $t0 1
#	move $a1 $a1
	sll $a0 $a1 2
#	move $a0 $a0
#	move $a1 $a1
	jal new
	sw $v0 8($s0)
#	move $s0 $s0
	beq $s0 0 _BADPTR
L.4:
	addu $t0 $s1 $s1
	subu $a1 $t0 1
#	move $a1 $a1
	sll $a0 $a1 2
#	move $a0 $a0
#	move $a1 $a1
	jal new
	sw $v0 12($s0)
	move $v0 $s0
L.0:
#	returnSink
	addu $sp Queens.Init.framesize
	lw $s0 -4($sp)
	lw $s1 -8($sp)
	lw $ra -12($sp)
	jr $ra
	.text
Queens.Run:
Queens.Run.framesize=40
	sw $ra -24($sp)
	sw $s4 -20($sp)
	sw $s3 -16($sp)
	sw $s2 -12($sp)
	sw $s1 -8($sp)
	sw $s0 -4($sp)
	subu $sp Queens.Run.framesize
	move $s1 $a0
	move $s0 $a1
L.101:
#	move $s1 $s1
	beq $s1 0 _BADPTR
L.7:
	lw $t0 4($s1)
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.8:
	lw $t0 -4($t0)
	beq $s0 $t0 L.9
L.10:
	move $s2 $0
#	move $s1 $s1
	beq $s1 0 _BADPTR
L.11:
	lw $t0 0($s1)
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.12:
	lw $t0 -4($t0)
	subu $s3 $t0 1
#	move $s3 $s3
L.14:
	ble $s2 $s3 L.13
L.15:
L.6:
	b L.5
L.9:
#	move $s1 $s1
	lw $t0 -4($s1)
	lw $t0 8($t0)
	move $a0 $s1
	jalr $t0
	b L.6
L.13:
	move $s4 $s2
#	move $s1 $s1
	beq $s1 0 _BADPTR
L.17:
	lw $t0 0($s1)
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.18:
#	move $t0 $t0
#	move $s4 $s4
	blt $s4 0 _BADSUB
L.19:
	lw $t1 -4($t0)
	bge $s4 $t1 _BADSUB
L.20:
	sll $t1 $s4 2
	addu $t0 $t0 $t1
	lw $t0 0($t0)
	beq $t0 0 L.47
L.32:
L.16:
	addu $s2 $s2 1
#	move $s2 $s2
	b L.14
L.47:
#	move $s1 $s1
	beq $s1 0 _BADPTR
L.21:
	lw $t0 8($s1)
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.22:
#	move $t0 $t0
	addu $t1 $s4 $s0
#	move $t1 $t1
	blt $t1 0 _BADSUB
L.23:
	lw $t2 -4($t0)
	bge $t1 $t2 _BADSUB
L.24:
	sll $t1 $t1 2
	addu $t0 $t0 $t1
	lw $t0 0($t0)
	bne $t0 0 L.32
L.42:
#	move $s1 $s1
	beq $s1 0 _BADPTR
L.25:
	lw $t0 12($s1)
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.26:
#	move $t0 $t0
#	move $s1 $s1
	beq $s1 0 _BADPTR
L.27:
	lw $t1 0($s1)
#	move $t1 $t1
	beq $t1 0 _BADPTR
L.28:
	lw $t1 -4($t1)
	subu $t1 $t1 1
	addu $t1 $s4 $t1
	subu $t1 $t1 $s0
#	move $t1 $t1
	blt $t1 0 _BADSUB
L.29:
	lw $t2 -4($t0)
	bge $t1 $t2 _BADSUB
L.30:
	sll $t1 $t1 2
	addu $t0 $t0 $t1
	lw $t0 0($t0)
	bne $t0 0 L.32
L.31:
#	move $s1 $s1
	beq $s1 0 _BADPTR
L.48:
	lw $t0 0($s1)
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.49:
#	move $t0 $t0
#	move $s4 $s4
	blt $s4 0 _BADSUB
L.50:
	lw $t1 -4($t0)
	bge $s4 $t1 _BADSUB
L.51:
	sll $t1 $s4 2
	addu $t1 $t0 $t1
	li $t0 1
	sw $t0 0($t1)
#	move $s1 $s1
	beq $s1 0 _BADPTR
L.52:
	lw $t0 8($s1)
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.53:
#	move $t0 $t0
	addu $t1 $s4 $s0
#	move $t1 $t1
	blt $t1 0 _BADSUB
L.54:
	lw $t2 -4($t0)
	bge $t1 $t2 _BADSUB
L.55:
	sll $t1 $t1 2
	addu $t1 $t0 $t1
	li $t0 1
	sw $t0 0($t1)
#	move $s1 $s1
	beq $s1 0 _BADPTR
L.56:
	lw $t0 12($s1)
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.57:
#	move $t0 $t0
#	move $s1 $s1
	beq $s1 0 _BADPTR
L.58:
	lw $t1 0($s1)
#	move $t1 $t1
	beq $t1 0 _BADPTR
L.59:
	lw $t1 -4($t1)
	subu $t1 $t1 1
	addu $t1 $s4 $t1
	subu $t1 $t1 $s0
#	move $t1 $t1
	blt $t1 0 _BADSUB
L.60:
	lw $t2 -4($t0)
	bge $t1 $t2 _BADSUB
L.61:
	sll $t1 $t1 2
	addu $t1 $t0 $t1
	li $t0 1
	sw $t0 0($t1)
#	move $s1 $s1
	beq $s1 0 _BADPTR
L.62:
	lw $t0 4($s1)
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.63:
#	move $t0 $t0
#	move $s0 $s0
	blt $s0 0 _BADSUB
L.64:
	lw $t1 -4($t0)
	bge $s0 $t1 _BADSUB
L.65:
	sll $t1 $s0 2
	addu $t0 $t0 $t1
	sw $s4 0($t0)
#	move $s1 $s1
	lw $t0 -4($s1)
	lw $t0 4($t0)
	move $a0 $s1
	addu $a1 $s0 1
#	move $a1 $a1
	jalr $t0
#	move $s1 $s1
	beq $s1 0 _BADPTR
L.66:
	lw $t0 0($s1)
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.67:
#	move $t0 $t0
#	move $s4 $s4
	blt $s4 0 _BADSUB
L.68:
	lw $t1 -4($t0)
	bge $s4 $t1 _BADSUB
L.69:
	sll $t1 $s4 2
	addu $t0 $t0 $t1
	sw $0 0($t0)
#	move $s1 $s1
	beq $s1 0 _BADPTR
L.70:
	lw $t0 8($s1)
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.71:
#	move $t0 $t0
	addu $t1 $s4 $s0
#	move $t1 $t1
	blt $t1 0 _BADSUB
L.72:
	lw $t2 -4($t0)
	bge $t1 $t2 _BADSUB
L.73:
	sll $t1 $t1 2
	addu $t0 $t0 $t1
	sw $0 0($t0)
#	move $s1 $s1
	beq $s1 0 _BADPTR
L.74:
	lw $t0 12($s1)
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.75:
#	move $t0 $t0
#	move $s1 $s1
	beq $s1 0 _BADPTR
L.76:
	lw $t1 0($s1)
#	move $t1 $t1
	beq $t1 0 _BADPTR
L.77:
	lw $t1 -4($t1)
	subu $t1 $t1 1
	addu $t1 $s4 $t1
	subu $t1 $t1 $s0
#	move $t1 $t1
	blt $t1 0 _BADSUB
L.78:
	lw $t2 -4($t0)
	bge $t1 $t2 _BADSUB
L.79:
	sll $t1 $t1 2
	addu $t0 $t0 $t1
	sw $0 0($t0)
	b L.16
L.5:
#	returnSink
	addu $sp Queens.Run.framesize
	lw $s0 -4($sp)
	lw $s1 -8($sp)
	lw $s2 -12($sp)
	lw $s3 -16($sp)
	lw $s4 -20($sp)
	lw $ra -24($sp)
	jr $ra
	.text
Queens.PrintBoard:
Queens.PrintBoard.framesize=44
	sw $ra -28($sp)
	sw $s5 -24($sp)
	sw $s4 -20($sp)
	sw $s3 -16($sp)
	sw $s2 -12($sp)
	sw $s1 -8($sp)
	sw $s0 -4($sp)
	subu $sp Queens.PrintBoard.framesize
	move $s0 $a0
L.102:
	move $s1 $0
#	move $s0 $s0
	beq $s0 0 _BADPTR
L.81:
	lw $t0 4($s0)
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.82:
	lw $t0 -4($t0)
	subu $s2 $t0 1
#	move $s2 $s2
L.84:
	ble $s1 $s2 L.83
L.85:
	li $a0 10
#	move $a0 $a0
	jal _putchar
	b L.80
L.83:
	move $s4 $s1
	move $s3 $0
#	move $s0 $s0
	beq $s0 0 _BADPTR
L.86:
	lw $t0 0($s0)
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.87:
	lw $t0 -4($t0)
	subu $s5 $t0 1
#	move $s5 $s5
L.89:
	ble $s3 $s5 L.88
L.90:
	li $a0 10
#	move $a0 $a0
	jal _putchar
	addu $s1 $s1 1
#	move $s1 $s1
	b L.84
L.88:
#	move $s3 $s3
	li $a0 32
#	move $a0 $a0
	jal _putchar
#	move $s0 $s0
	beq $s0 0 _BADPTR
L.92:
	lw $t0 4($s0)
#	move $t0 $t0
	beq $t0 0 _BADPTR
L.93:
#	move $t0 $t0
#	move $s4 $s4
	blt $s4 0 _BADSUB
L.94:
	lw $t1 -4($t0)
	bge $s4 $t1 _BADSUB
L.95:
	sll $t1 $s4 2
	addu $t0 $t0 $t1
	lw $t0 0($t0)
	beq $t0 $s3 L.96
L.97:
	li $a0 46
#	move $a0 $a0
	jal _putchar
L.91:
	addu $s3 $s3 1
#	move $s3 $s3
	b L.89
L.96:
	li $a0 81
#	move $a0 $a0
	jal _putchar
	b L.91
L.80:
#	returnSink
	addu $sp Queens.PrintBoard.framesize
	lw $s0 -4($sp)
	lw $s1 -8($sp)
	lw $s2 -12($sp)
	lw $s3 -16($sp)
	lw $s4 -20($sp)
	lw $s5 -24($sp)
	lw $ra -28($sp)
	jr $ra
	.text
Queens_M3:
Queens_M3.framesize=20
	sw $ra -4($sp)
	subu $sp Queens_M3.framesize
L.103:
	li $a0 16
#	move $a0 $a0
	la $a1 Queens.Queens
#	move $a1 $a1
	jal new
#	move $v0 $v0
	lw $t0 -4($v0)
	lw $t0 0($t0)
	move $a0 $v0
	jalr $t0
#	move $v0 $v0
	sw $v0 Queens.q+0
	lw $a0 Queens.q+0
#	move $a0 $a0
	lw $t0 -4($a0)
	lw $t0 4($t0)
#	move $a0 $a0
	move $a1 $0
	jalr $t0
#	returnSink
	addu $sp Queens_M3.framesize
	lw $ra -4($sp)
	jr $ra
	.globl main
	.text
main:
main.framesize=4
	sw $ra -4($sp)
	subu $sp main.framesize
L.104:
	jal Queens_M3
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
L.105:
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
L.98:	.asciiz	"Attempt to use a null pointer"
	.text
badPtr:
badPtr.framesize=4
	sw $ra -4($sp)
	subu $sp badPtr.framesize
L.106:
	la $a0 L.98
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
L.99:	.asciiz	"Subscript out of bounds"
	.text
badSub:
badSub.framesize=4
	sw $ra -4($sp)
	subu $sp badSub.framesize
L.107:
	la $a0 L.99
#	move $a0 $a0
	jal _puts
	li $a0 1
#	move $a0 $a0
	jal _exit
#	returnSink
	addu $sp badSub.framesize
	lw $ra -4($sp)
	jr $ra
