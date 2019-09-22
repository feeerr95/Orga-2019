#include <mips/regdef.h>
#include <sys/syscalls.h>

	.text
	.abicalls
	.align 2
	.global matrix_multiply
	.ent matrix_multiply

matrix_multiply:
	
	.frame $fp, 40, ra
	set	noreorder	# apaga reordenamiento de instrucciones
	.cpload t9		# directiva usada para codigo PIC
	.set	reorder	
	subu	sp, sp, 40	# 4 (SRA) + 2 (LTA) + 4 (ABA)
	.cprestore 24		# inserta aqui "sw gp, 24(sp)",
						# mas "lw gp, 24(sp)" luego de cada jal.
						# salvado de callee-saved regs en SRA	
	sw		$fp, 28(sp)
	sw		ra, 32(sp)
	
	move	$fp, sp # de aqui al fin de la funcion uso $fp en lugar de sp.
	sw		a0, 40($fp)	# matrix_t* m1: a0, sp+40
	sw  	a1, 44($fp) # matrix_t* m2: a1, sp+44
	
	sw 		t0, 16($fp)
	sw		t1, 20($fp)
	sw		t2, 24($fp)
	sw		t3, 28($fp)
	sw		t4, 32($fp)

	lw  	t0, 40($fp) #puntero a m1
	lw  	t1, 0(t0) #t1 = m1->rows
	lw  	t2, 4(t0) #t2 = m1->cols
	bne 	t1, t2, _dimension_error # m1->rows != m1->cols
 
	lw  	t2, 44($fp) #puntero a m2
	lw 	 	t3, 0($fp) #t3 = m2->rows
	lw  	t4, 4(t2) #t4 = m2->cols
	bne		t3, t4, _dimension_error #m2->rows != m2->cols
	bne		t1, t3, _dimension_error #m1->rows != m2->rows
	
	sw		t1, 0($fp)
	sw		t1, 4($fp)
	la 		t9, create_matrix
	jal  	t9

	sw 		s0, 36($fp)
	sw		s1, 40($fp)
	sw		t5, 44($fp)


	mul 	s0, s0, zero #Limpio s0, por las dudas
	addu 	s0, s0, v0 #s0 = result (puntero a lo que devuelve create_matrix) (creo)
	beqz	s0, _created_matrix_error

	#N = t1
	mul 	t2, t2, zero #i = 0
for_i:
	mul 	t3, t3, zero #x = 0
for_x:
	#guardar en ABA mresult, x, i, 0
	la 		t9, index_value
	jal 	t9
	mul 	t4, t4, zero # y= 0
for_y:
	#double value = value_obtain(mresult,x,i);
	#value += value_obtain(m1,y, i) * value_obtain(m2,x,y);
	#index_value(mresult,x,i,value);
	
	addiu 	t4, t4, 1 # y++
	sltu	t5, t1, t4 # if t1 < t4 (N < y) t5 = 1 else t5 = 0
	beqz 	t5, for_y 

	addiu 	t3, t3, 1 # x++
	sltu	t5, t1, t3
	beqz 	t5, for_x

	addiu 	t2, t2, 1 #i++
	sltu	t5, t1, t2
	beqz 	t5, for_i 

	#hay que hacer el return mresult;
	jr ra
	

_created_matrix_error:
	#Aca hay que guardar el "NO MATRIX CREATED ERROR" en algun registro ax para pasarlo a fprintf
	la 		t9, fprintf #uso del printf
	jal 	t9
	subu	v0, zero, zero #return NULL
	jr		ra


_dimension_error:
	#Aca hay que guardar el "DIMENSION ERROR" en algun registro ax para pasarlo a fprintf
	la 		t9, fprintf #uso del printf
	jal 	t9
	subu	v0, zero, zero #return NULL
	jr		ra

	.end matrix_multiply #Dudas de donde va esto
