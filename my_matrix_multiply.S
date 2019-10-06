#include <mips/regdef.h>
#include <sys/syscall.h>

	.text
	.abicalls
	.align 2
	.globl my_matrix_multiply
	.ent my_matrix_multiply

my_matrix_multiply:

	.frame $fp, 40, ra
	.set	noreorder	# apaga reordenamiento de instrucciones
	.cpload t9		# directiva usada para codigo PIC
	.set	reorder
	subu	sp, sp, 40	# 4 (SRA) + 2 (LTA) + 4 (ABA)
	.cprestore 24		# inserta aqui "sw gp, 24(sp)", mas "lw gp, 24(sp)" luego de cada jal salvado de callee-saved regs en SRA
	sw		$fp, 28(sp)
	sw		ra, 32(sp)

	move	$fp, sp # de aqui al fin de la funcion uso $fp en lugar de sp.
	sw		a0, 40($fp)	# guardo en el stack a0 = *m1
	sw  	a1, 44($fp) # guardo en el stack a1 = *m2

	lw  	t0, 0(a0) #t0 = m1->rows
	lw  	t1, 4(a0) #t1 = m1->cols
	bne 	t0, t1, _dimension_error # m1->rows != m1->cols

	lw 	 	t2, 0(a1) #t2 = m2->rows
	lw  	t3, 4(a1) #t3 = m2->cols
	bne		t2, t3, _dimension_error #m2->rows != m2->cols
	bne		t0, t3, _dimension_error #m1->rows != m2->rows

	li 		a0, 12
	la 		t9, mymalloc
	jal 	ra, t9
	move 	s0, v0 #guardo el puntero de mresult en s0
	beq 	s0, -1, _malloc_matrix_error

	lw  	a0, 40($fp) # a0 = *matriz1
	lw 		a1, 44($fp) #a1 = *matriz2
	lw 	 	t0, 0(a0) #t0 = m1->rows
	lw  	t1, 4(a0) #t1 = m1->cols

	sw 		t0, 0(s0) #le asigno las rows a la nueva matriz
	sw 		t1, 4(s0) #le asigno las cols a la nueva matriz creo array de la nueva matriz
	mul 	t0, t0, t1
	sll 	t0, t0, 3
	move	a0, t0 #guardo en a0 el valor de t0(guardo el size que quiero del array)
	la 		t9, mymalloc
	jal 	ra, t9
	move 	s1, v0
	beq 	s1, -1, _malloc_array_error
	sw 		s1, 8(s0)
	sw 		s0, 16($fp)

	lw 		a0, 40($fp) #cargo a0 (m1)
	lw 		a1, 44($fp) #cargo a1 (m2)
	lw		t0, 0(a0) #t1 = m1->rows = N

	move	t1, zero #i=0
for_i: move	t2, zero # x=0: t3
for_x: lw t4, 8(s0) #t4 = mresult->array
	lw      t5, 0(s0) #t5 = mresult->rows
	mul 	t5, t5, t1 #t5 = mresult->rows * i
	addu 	t5, t5, t2 #t5 = mresult->rows * i + x

	sll 	t5, t5, 3 #multiplico por 8 porque son doubles
	addu 	t4, t4, t5
	sw 		zero, 0(t4) #########VER BIEN ESTO, Aca quiero guardar 0 en la pos rows*i+x de la matriz #########

	move	t3, zero # y=0: t4
for_y:

	lw 		t4, 8(a0) #t4 = m1->array
	lw      t5, 0(a0) #t5 = m1->rows
	mul 	t5, t5, t1 #t5 = m1->rows * i
	addu 	t5, t5, t3 #t5 = m1->rows * i + y

	sll 	t5, t5, 3 #multiplico por 8 porque son doubles
	addu 	t4, t4, t5
	l.d 	$f0, 0(t4) #creo que en f0 se guarda m1->array[i*m1->rows + y] ################################

	lw 		t4, 8(a1) #t4 = m2->array
	lw      t5, 0(a1) #t5 = m2->rows
	mul 	t5, t5, t3 #t5 = m2->rows * y
	addu 	t5, t5, t2 #t5 = m2->rows * y + x

	sll 	t5, t5, 3 #multiplico por 8 porque son doubles
	addu 	t4, t4, t5
	l.d		$f2, 0(t4) #creo que en f1 se guarda m2->array[y*m2->rows + x] #################################

	mul.d 	$f0, $f2, $f0 # multiplcacion de valores de las matrices

	lw 		t4, 8(s0) #t4 = mresult->array
	lw      t5, 0(s0) #t5 = mresult->rows
	mul 	t5, t5, t1 #t5 = mresult->rows * i
	addu 	t5, t5, t2 #t5 = mresult->rows * i + x

	sll 	t5, t5, 3 #multiplico por 8 porque son doubles
	addu 	t4, t4, t5
	l.d		$f2, 0(t4)
	add.d $f0, $f0, $f2
	s.d		$f0, 0(t4) # mresult->array[t7] = multiplicacion ##################################

	addiu 	t3, t3, 1 # y++
	sltu	t6, t3, t0 # si y < N t6 = 1 si no t6 = 0
	bnez 	t6, for_y #salta al for si t6 != 0

	addiu 	t2, t2, 1 # x++
	sltu	t6, t2, t0
	bnez 	t6, for_x

	addiu 	t1, t1, 1 #i++
	sltu	t6, t1, t0
	bnez 	t6, for_i

	lw 		v0, 16($fp) #con esto hacemos el return del puntero de mresult
	lw		ra, 32(sp)
	lw		$fp, 28(sp)
	lw		gp, 24(sp)
	jr		ra

_created_matrix_error:
	li 		a0, 2 #File descriptor del write, modo stderr
	la 		a1, CREATED_MATRIX_ERROR
	li 		a2, 23
	li 		v0, SYS_write
	syscall
	li		v0, 0 #return NULL
	jr		ra


_dimension_error:
	li 		a0, 2 #File descriptor del write, modo stderr
	la 		a1, DIM_ERROR
	li 		a2, 15
	li 		v0, SYS_write
	syscall
	li		v0, 0 #return NULL
	jr		ra


_malloc_matrix_error:
	li 		a0, 2 #File descriptor del write, modo stderr
	la 		a1, MALLOC_MATRIX_ERROR
	li 		a2, 49
	li 		v0, SYS_write
	syscall
	li		v0, 0 #return NULL
	jr		ra

_malloc_array_error:
	move 	a0, s0
	la 		t9, myfree
	jal 	ra, t9

	li 		a0, 2 #File descriptor del write, modo stderr
	la 		a1, MALLOC_ARRAY_ERROR
	li 		a2, 48
	li 		v0, SYS_write
	syscall
	li		v0, 0 #return NULL
	jr		ra

	.end my_matrix_multiply

	.size	my_matrix_multiply,.-my_matrix_multiply

	.rdata
	.align 2

DIM_ERROR: .asciiz "DIMENSION ERROR"
CREATED_MATRIX_ERROR: .asciiz "NO MATRIX CREATED ERROR"
MALLOC_MATRIX_ERROR: .asciiz "ERROR AL GUARDAR MEMORIA PARA LA MATRIZ RESULTADO"
MALLOC_ARRAY_ERROR: .asciiz "ERROR AL GUARDAR MEMORIA PARA EL ARRAY RESULTADO"
