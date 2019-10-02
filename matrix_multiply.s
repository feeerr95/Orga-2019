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
	sw		a0, 40($fp)	# matrix_t* m1 lo salvo en a0, sp+40
	sw  	a1, 44($fp) # matrix_t* m2 lo salvo en a1, sp+44

	lw  	t1, 0(a0) #t1 = m1->rows
	lw  	t2, 4(a0) #t2 = m1->cols
	bne 	t1, t2, _dimension_error # m1->rows != m1->cols
 
	lw 	 	t3, 0(a1) #t3 = m2->rows
	lw  	t4, 4(a1) #t4 = m2->cols
	bne		t3, t4, _dimension_error #m2->rows != m2->cols
	bne		t1, t3, _dimension_error #m1->rows != m2->rows

	#------------------------------------------------
	sw		t1, 0($fp)
	la 		t9, create_matrix
	jal  	t9

	move 	s0, zero #Limpio s0, por las dudas
	addu 	s0, s0, v0 #s0 = result (puntero a lo que devuelve create_matrix)
	sw 		s0, 16($fp)

	beqz	s0, _created_matrix_error
	#------------------------------------------------

	sw 		a0, 40($fp) #cargo a0 (m1)
	lw		t0, 0(a0) #t1 = m1->rows = N
	sw 		a1, 44($fp) #cargo a1 (m2)

	move	t2, zero # i=0: t2
for_i:

	move	t3, zero # x=0: t3
for_x:

	lw 		t6, 8(s0) #t6 = mresult->array
	lw      t7, 0(s0) #t7 = mresult->rows
	mul 	t7, t7, t2 #t7 = mresult->rows * i
	addu 	t7, t7, t3 #t7 = mresult->rows * i + x
	sw 		zero, t7(t6) # mresult->array[t7] = 0

	move	t4, zero # y=0: t4
for_y:
	
	lw 		t6, 8(a0) #t6 = m1->array
	lw      t7, 0(a0) #t7 = m1->rows
	mul 	t7, t7, t2 #t7 = m1->rows * i
	addu 	t7, t7, t4 #t7 = m1->rows * i + y
	l.d 	f0, t7(t6) #creo que en f0 se guarda m1->array[i*m1->rows + y]

	lw 		t6, 8(a1) #t6 = m2->array
	lw      t7, 0(a1) #t7 = m2->rows
	mul 	t7, t7, t2 #t7 = m2->rows * i
	addu 	t7, t7, t3 #t7 = m2->rows * i + y
	l.d 	f1, t7(t6) #creo que en f1 se guarda m2->array[i*m1->rows + y]

	mul.s 	f0, f1, f0 # multiplcacion de valores de las matrices

	lw 		t6, 8(s0) #t6 = mresult->array
	lw      t7, 0(s0) #t7 = mresult->rows
	mul 	t7, t7, t3 #t7 = mresult->rows * x
	addu 	t7, t7, t4 #t7 = mresult->rows * x + y
	s.d		f0, t7(t6) # mresult->array[t7] = 0
	
	addiu 	t4, t4, 1 # y++
	sltu	t5, t0, t4 # if t0 < t4 (N < y) t5 = 1 else t5 = 0
	beqz 	t5, for_y 

	addiu 	t3, t3, 1 # x++
	sltu	t5, t0, t3
	beqz 	t5, for_x

	addiu 	t2, t2, 1 #i++
	sltu	t5, t0, t2
	beqz 	t5, for_i 

	#hay que hacer el return mresult;
	jr ra
	

_created_matrix_error:
	li 		a0, 2 #File descriptor del write, modo stderr
	la 		a1, CREATED_MATRIX_ERROR
	li 		a2, 23
	li 		v0, sys_write
	syscall
	subu	v0, zero, zero #return NULL
	jr		ra


_dimension_error:
	li 		a0, 2 #File descriptor del write, modo stderr
	la 		a1, DIM_ERROR
	li 		a2, 15
	li 		v0, sys_write
	syscall
	subu	v0, zero, zero #return NULL
	jr		ra

	.end matrix_multiply #Dudas de donde va esto

DIM_ERROR: .asciiz "DIMENSION ERROR"
CREATED_MATRIX_ERROR: .asciiz "NO MATRIX CREATED ERROR"

matrix_t* matrix_multiply(matrix_t* m1, matrix_t* m2){

	if(m1->rows != m1->cols || m2->rows != m2->cols || m1->rows != m2->rows) {
		fprintf(stderr, "DIMENSION ERROR");
		return NULL;
		}

	matrix_t* mresult = create_matrix(m1->rows, m1->cols);

	if(!mresult) {
		fprintf(stderr, "NO MATRIX CREATED ERROR");
		return NULL;
	}

	int N = m1->cols;
	for(int i = 0; i < N; i++){
	 	for(int x = 0; x < N; x++){
	        mresult->array[i*mresult->rows + x] = 0;
	 		for(int y = 0; y < N; y++){
	 			double value = value_obtain(mresult,x,i);
	 			value += value_obtain(m1,y, i) * value_obtain(m2,x,y);
	 			index_value(mresult,x,i,value);
	 		}
	 	}
	}
	return mresult;
}

