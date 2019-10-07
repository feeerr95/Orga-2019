	.file	1 "main.c"
	.section .mdebug.abi32
	.previous
	.abicalls
	.rdata
	.align	2
$LC0:
	.ascii	" \000"
	.align	2
$LC1:
	.ascii	"%i\000"
	.align	2
$LC2:
	.ascii	"ERROR EN LECTURA: No se recibio un tama\303\261o correct"
	.ascii	"o de matriz\n\000"
	.align	2
$LC3:
	.ascii	"MEMORY ERROR\n\000"
	.align	2
$LC4:
	.ascii	"%s\000"
	.align	2
$LC5:
	.ascii	"ERROR EN LECTURA: Faltan valores\n\000"
	.align	2
$LC6:
	.ascii	"\000"
	.align	2
$LC7:
	.ascii	"\n\000"
	.align	2
$LC8:
	.ascii	"ERROR EN LECTURA: Valor en formato erroneo\n\000"
	.align	2
$LC9:
	.ascii	"ERROR AL CARGAR VALOR A\000"
	.align	2
$LC10:
	.ascii	"ERROR AL CARGAR VALOR B\000"
	.align	2
$LC11:
	.ascii	"ERROR AL CREAR MATRIZ A\000"
	.align	2
$LC12:
	.ascii	"ERROR AL CREAR MATRIZ B\000"
	.align	2
$LC13:
	.ascii	"ERROR AL COMPLETAR MATRIZ A\000"
	.align	2
$LC14:
	.ascii	"ERROR AL COMPLETAR MATRIZ B\000"
	.align	2
$LC15:
	.ascii	"ERROR AL REALIZAR MULTIPLICACION\000"
	.align	2
$LC16:
	.ascii	"out.txt\000"
	.align	2
$LC17:
	.ascii	"a\000"
	.align	2
$LC18:
	.ascii	"ERROR AL LEER ARCHIVO SALIDA\000"
	.text
	.align	2
	.globl	main
	.ent	main
main:
	.frame	$fp,4208,$ra		# vars= 4168, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,4208
	.cprestore 16
	sw	$ra,4200($sp)
	sw	$fp,4196($sp)
	sw	$gp,4192($sp)
	move	$fp,$sp
	sw	$a0,4208($fp)
	sw	$a1,4212($fp)
	la	$v0,$LC0
	sw	$v0,4136($fp)
	sw	$zero,4144($fp)
$L18:
	addu	$v0,$fp,40
	move	$a0,$v0
	li	$a1,4096			# 0x1000
	la	$a2,__sF
	la	$t9,fgets
	jal	$ra,$t9
	bne	$v0,$zero,$L20
	b	$L19
$L20:
	addu	$v0,$fp,40
	move	$a0,$v0
	la	$a1,$LC1
	addu	$a2,$fp,24
	la	$t9,sscanf
	jal	$ra,$t9
	sw	$v0,4140($fp)
	lw	$v0,4140($fp)
	beq	$v0,$zero,$L22
	lw	$v0,24($fp)
	blez	$v0,$L22
	b	$L21
$L22:
	la	$a0,__sF+176
	la	$a1,$LC2
	la	$t9,fprintf
	jal	$ra,$t9
	li	$a0,1			# 0x1
	la	$t9,exit
	jal	$ra,$t9
$L21:
	lw	$v1,24($fp)
	lw	$v0,24($fp)
	mult	$v1,$v0
	mflo	$v0
	sll	$v0,$v0,1
	sw	$v0,4148($fp)
	lw	$v0,4148($fp)
	sll	$v0,$v0,3
	move	$a0,$v0
	la	$t9,malloc
	jal	$ra,$t9
	sw	$v0,4152($fp)
	lw	$v0,4152($fp)
	bne	$v0,$zero,$L23
	la	$a0,__sF+176
	la	$a1,$LC3
	la	$t9,fprintf
	jal	$ra,$t9
	li	$a0,1			# 0x1
	la	$t9,exit
	jal	$ra,$t9
$L23:
	addu	$v0,$fp,40
	move	$a0,$v0
	lw	$a1,4136($fp)
	la	$t9,strtok
	jal	$ra,$t9
	sw	$v0,4156($fp)
	sw	$zero,4160($fp)
$L24:
	lw	$v0,4160($fp)
	lw	$v1,4148($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L27
	b	$L25
$L27:
	move	$a0,$zero
	lw	$a1,4136($fp)
	la	$t9,strtok
	jal	$ra,$t9
	sw	$v0,4156($fp)
	lw	$v0,4156($fp)
	bne	$v0,$zero,$L28
	lw	$a0,4152($fp)
	la	$t9,free
	jal	$ra,$t9
	la	$a0,__sF+176
	la	$a1,$LC4
	la	$a2,$LC5
	la	$t9,fprintf
	jal	$ra,$t9
	li	$a0,1			# 0x1
	la	$t9,exit
	jal	$ra,$t9
$L28:
	la	$v0,$LC6
	sw	$v0,4164($fp)
	addu	$v0,$fp,4164
	lw	$a0,4156($fp)
	move	$a1,$v0
	la	$t9,strtod
	jal	$ra,$t9
	s.d	$f0,32($fp)
	la	$a0,$LC6
	lw	$a1,4164($fp)
	la	$t9,strcmp
	jal	$ra,$t9
	beq	$v0,$zero,$L29
	la	$a0,$LC7
	lw	$a1,4164($fp)
	la	$t9,strcmp
	jal	$ra,$t9
	beq	$v0,$zero,$L29
	lw	$a0,4152($fp)
	la	$t9,free
	jal	$ra,$t9
	la	$a0,__sF+176
	la	$a1,$LC4
	la	$a2,$LC8
	la	$t9,fprintf
	jal	$ra,$t9
	li	$a0,1			# 0x1
	la	$t9,exit
	jal	$ra,$t9
$L29:
	lw	$v0,4160($fp)
	sll	$v1,$v0,3
	lw	$v0,4152($fp)
	addu	$v0,$v1,$v0
	l.d	$f0,32($fp)
	s.d	$f0,0($v0)
	lw	$v0,4160($fp)
	addu	$v0,$v0,1
	sw	$v0,4160($fp)
	b	$L24
$L25:
	lw	$v1,24($fp)
	lw	$v0,24($fp)
	mult	$v1,$v0
	mflo	$v0
	sll	$v0,$v0,3
	move	$a0,$v0
	la	$t9,malloc
	jal	$ra,$t9
	sw	$v0,4164($fp)
	lw	$v0,4164($fp)
	bne	$v0,$zero,$L30
	la	$a0,__sF+176
	la	$a1,$LC4
	la	$a2,$LC9
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$a0,4152($fp)
	la	$t9,free
	jal	$ra,$t9
	li	$a0,1			# 0x1
	la	$t9,exit
	jal	$ra,$t9
$L30:
	lw	$v1,24($fp)
	lw	$v0,24($fp)
	mult	$v1,$v0
	mflo	$v0
	sll	$v0,$v0,3
	lw	$a0,4164($fp)
	lw	$a1,4152($fp)
	move	$a2,$v0
	la	$t9,memcpy
	jal	$ra,$t9
	lw	$v1,24($fp)
	lw	$v0,24($fp)
	mult	$v1,$v0
	mflo	$v0
	sll	$v0,$v0,3
	move	$a0,$v0
	la	$t9,malloc
	jal	$ra,$t9
	sw	$v0,4160($fp)
	lw	$v0,4160($fp)
	bne	$v0,$zero,$L31
	la	$a0,__sF+176
	la	$a1,$LC4
	la	$a2,$LC10
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$a0,4152($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4164($fp)
	la	$t9,free
	jal	$ra,$t9
	li	$a0,1			# 0x1
	la	$t9,exit
	jal	$ra,$t9
$L31:
	lw	$v1,24($fp)
	lw	$v0,24($fp)
	mult	$v1,$v0
	mflo	$v0
	sll	$v1,$v0,3
	lw	$v0,4152($fp)
	addu	$a1,$v1,$v0
	lw	$v1,24($fp)
	lw	$v0,24($fp)
	mult	$v1,$v0
	mflo	$v0
	sll	$v0,$v0,3
	lw	$a0,4160($fp)
	move	$a2,$v0
	la	$t9,memcpy
	jal	$ra,$t9
	lw	$a0,24($fp)
	lw	$a1,24($fp)
	la	$t9,create_matrix
	jal	$ra,$t9
	sw	$v0,4168($fp)
	lw	$v0,4168($fp)
	bne	$v0,$zero,$L32
	la	$a0,__sF+176
	la	$a1,$LC4
	la	$a2,$LC11
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$a0,4152($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4164($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4160($fp)
	la	$t9,free
	jal	$ra,$t9
	li	$a0,1			# 0x1
	la	$t9,exit
	jal	$ra,$t9
$L32:
	lw	$a0,24($fp)
	lw	$a1,24($fp)
	la	$t9,create_matrix
	jal	$ra,$t9
	sw	$v0,4172($fp)
	lw	$v0,4172($fp)
	bne	$v0,$zero,$L33
	la	$a0,__sF+176
	la	$a1,$LC4
	la	$a2,$LC12
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$a0,4152($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4164($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4160($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4168($fp)
	la	$t9,destroy_matrix
	jal	$ra,$t9
	li	$a0,1			# 0x1
	la	$t9,exit
	jal	$ra,$t9
$L33:
	lw	$a0,4164($fp)
	lw	$a1,4168($fp)
	la	$t9,complete_matrix
	jal	$ra,$t9
	sw	$v0,4176($fp)
	lw	$v1,4176($fp)
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L34
	la	$a0,__sF+176
	la	$a1,$LC4
	la	$a2,$LC13
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$a0,4152($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4164($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4160($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4168($fp)
	la	$t9,destroy_matrix
	jal	$ra,$t9
	lw	$a0,4172($fp)
	la	$t9,destroy_matrix
	jal	$ra,$t9
	li	$a0,1			# 0x1
	la	$t9,exit
	jal	$ra,$t9
$L34:
	lw	$a0,4160($fp)
	lw	$a1,4172($fp)
	la	$t9,complete_matrix
	jal	$ra,$t9
	sw	$v0,4176($fp)
	lw	$v1,4176($fp)
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L35
	la	$a0,__sF+176
	la	$a1,$LC4
	la	$a2,$LC14
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$a0,4152($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4164($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4160($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4168($fp)
	la	$t9,destroy_matrix
	jal	$ra,$t9
	lw	$a0,4172($fp)
	la	$t9,destroy_matrix
	jal	$ra,$t9
	li	$a0,1			# 0x1
	la	$t9,exit
	jal	$ra,$t9
$L35:
	lw	$a0,4168($fp)
	lw	$a1,4172($fp)
	la	$t9,matrix_multiply
	jal	$ra,$t9
	sw	$v0,4180($fp)
	lw	$v0,4180($fp)
	bne	$v0,$zero,$L36
	la	$a0,__sF+176
	la	$a1,$LC4
	la	$a2,$LC15
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$a0,4152($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4164($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4160($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4168($fp)
	la	$t9,destroy_matrix
	jal	$ra,$t9
	lw	$a0,4172($fp)
	la	$t9,destroy_matrix
	jal	$ra,$t9
	li	$a0,1			# 0x1
	la	$t9,exit
	jal	$ra,$t9
$L36:
	la	$a0,$LC16
	la	$a1,$LC17
	la	$t9,fopen
	jal	$ra,$t9
	sw	$v0,4184($fp)
	lw	$v0,4184($fp)
	bne	$v0,$zero,$L37
	la	$a0,__sF+176
	la	$a1,$LC4
	la	$a2,$LC18
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,1			# 0x1
	sw	$v0,4144($fp)
	b	$L38
$L37:
	lw	$a0,4184($fp)
	lw	$a1,4180($fp)
	la	$t9,print_matrix
	jal	$ra,$t9
	sw	$v0,4176($fp)
	lw	$v1,4176($fp)
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L38
	li	$v0,1			# 0x1
	sw	$v0,4144($fp)
$L38:
	lw	$a0,4152($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4164($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4160($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,4168($fp)
	la	$t9,destroy_matrix
	jal	$ra,$t9
	lw	$a0,4172($fp)
	la	$t9,destroy_matrix
	jal	$ra,$t9
	lw	$a0,4180($fp)
	la	$t9,matrix_destroy
	jal	$ra,$t9
	lw	$a0,4184($fp)
	la	$t9,fclose
	jal	$ra,$t9
	b	$L18
$L19:
	lw	$a0,4144($fp)
	la	$t9,exit
	jal	$ra,$t9
	.end	main
	.size	main, .-main
	.ident	"GCC: (GNU) 3.3.3 (NetBSD nb3 20040520)"
