	.globl main
	
	.text
	
main:
	addi a0, zero, 4
	jal  fact
exit:
	li   a7, 10
	ecall
	
fact:
	addi sp, sp, -8
	sw   ra, 4(sp)
	sw   a0, 0(sp)
	slti t0, a0, 1
	beq  t0, zero, L1
	addi a0, zero, 1
	addi sp, sp, 8
	jr   ra
L1:
	addi a0, a0, -1
	jal  fact
	lw   t0, 0(sp)
	lw   ra, 4(sp)
	addi sp, sp, 8
	mul  a0, t0, a0
	jr   ra