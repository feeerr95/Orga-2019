#include <sys/syscall.h>
#include <mips/regdef.h>

.text
	.abicalls
	.align 2
	.globl matrix_destroy
	.ent matrix_destroy

matrix_destroy:

	.frame $fp, 40, ra
	.set	noreorder	# apaga reordenamiento de instrucciones
	.cpload t9		# directiva usada para codigo PIC
	.set	reorder
	subu	sp, sp, 40	# 4 (SRA) + 2 (LTA) + 4 (ABA)
	.cprestore 24		# inserta aqui "sw gp, 24(sp)", mas "lw gp, 24(sp)" luego de cada jal salvado de callee-saved regs en SRA
	sw		$fp, 28(sp)
	sw		ra, 32(sp)

	move	$fp, sp # de aqui al fin de la funcion uso $fp en lugar de sp.
	sw		a0, 40($fp)	# guardo en el stack a0 = *m

	beqz	a0, _matrix_created_error
	ld	 	a0, 8(a0)
	la 		t9, myfree
	jal 	ra, t9
	ld 		a0, 40($fp)
	la 		t9, myfree
	jal 	ra, t9
	li		v0, 0 #return 0
	lw		ra, 32(sp)
	lw		$fp, 28(sp)
	lw		gp, 24(sp)
	jr		ra

_matrix_created_error:
	li 		a0, 2 #File descriptor del write, modo stderr
	la 		a1, CREATED_MATRIX_ERROR
	li 		a2, 23
	li 		v0, SYS_write
	syscall
	li		v0, -1 #return -1
	lw		ra, 32(sp)
	lw		$fp, 28(sp)
	lw		gp, 24(sp)
	jr		ra

	.end matrix_destroy

	.size matrix_destroy,.-matrix_destroy

	.rdata
	.align 2

CREATED_MATRIX_ERROR: .asciiz "NO MATRIX CREATED ERROR"
