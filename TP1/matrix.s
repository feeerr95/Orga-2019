	.file	1 "matrix.c"
	.section .mdebug.abi32
	.previous
	.abicalls
	.rdata
	.align	2
$LC0:
	.ascii	"MEMORY ERROR\000"
	.text
	.align	2
	.globl	create_matrix
	.ent	create_matrix
create_matrix:
	.frame	$fp,48,$ra		# vars= 8, regs= 4/0, args= 16, extra= 8
	.mask	0xd0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
	sw	$ra,44($sp)
	sw	$fp,40($sp)
	sw	$gp,36($sp)
	sw	$s0,32($sp)
	move	$fp,$sp
	sw	$a0,48($fp)
	sw	$a1,52($fp)
	lw	$v1,48($fp)
	lw	$v0,52($fp)
	beq	$v1,$v0,$L18
	sw	$zero,28($fp)
	b	$L17
$L18:
	li	$a0,12			# 0xc
	la	$t9,malloc
	jal	$ra,$t9
	sw	$v0,24($fp)
	lw	$v0,24($fp)
	bne	$v0,$zero,$L19
	la	$a0,__sF+176
	la	$a1,$LC0
	la	$t9,fprintf
	jal	$ra,$t9
	sw	$zero,28($fp)
	b	$L17
$L19:
	lw	$v1,24($fp)
	lw	$v0,48($fp)
	sw	$v0,0($v1)
	lw	$v1,24($fp)
	lw	$v0,52($fp)
	sw	$v0,4($v1)
	lw	$s0,24($fp)
	lw	$v1,52($fp)
	lw	$v0,48($fp)
	mult	$v1,$v0
	mflo	$v0
	move	$a0,$v0
	li	$a1,8			# 0x8
	la	$t9,calloc
	jal	$ra,$t9
	sw	$v0,8($s0)
	lw	$v0,24($fp)
	lw	$v0,8($v0)
	bne	$v0,$zero,$L20
	lw	$a0,24($fp)
	la	$t9,free
	jal	$ra,$t9
	la	$a0,__sF+176
	la	$a1,$LC0
	la	$t9,fprintf
	jal	$ra,$t9
	sw	$zero,28($fp)
	b	$L17
$L20:
	lw	$v0,24($fp)
	sw	$v0,28($fp)
$L17:
	lw	$v0,28($fp)
	move	$sp,$fp
	lw	$ra,44($sp)
	lw	$fp,40($sp)
	lw	$s0,32($sp)
	addu	$sp,$sp,48
	j	$ra
	.end	create_matrix
	.size	create_matrix, .-create_matrix
	.align	2
	.globl	index_value
	.ent	index_value
index_value:
	.frame	$fp,24,$ra		# vars= 8, regs= 2/0, args= 0, extra= 8
	.mask	0x50000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,24
	.cprestore 0
	sw	$fp,20($sp)
	sw	$gp,16($sp)
	move	$fp,$sp
	sw	$a0,24($fp)
	sw	$a1,28($fp)
	sw	$a2,32($fp)
	lw	$v0,24($fp)
	lw	$v0,0($v0)
	beq	$v0,$zero,$L23
	lw	$v0,24($fp)
	lw	$v0,4($v0)
	bne	$v0,$zero,$L22
$L23:
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,8($fp)
	b	$L21
$L22:
	lw	$a0,24($fp)
	lw	$v0,24($fp)
	lw	$v1,32($fp)
	lw	$v0,0($v0)
	mult	$v1,$v0
	mflo	$v1
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	sll	$v1,$v0,3
	lw	$v0,8($a0)
	addu	$v0,$v1,$v0
	l.d	$f0,40($fp)
	s.d	$f0,0($v0)
	sw	$zero,8($fp)
$L21:
	lw	$v0,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addu	$sp,$sp,24
	j	$ra
	.end	index_value
	.size	index_value, .-index_value
	.align	2
	.globl	value_obtain
	.ent	value_obtain
value_obtain:
	.frame	$fp,16,$ra		# vars= 0, regs= 2/0, args= 0, extra= 8
	.mask	0x50000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,16
	.cprestore 0
	sw	$fp,12($sp)
	sw	$gp,8($sp)
	move	$fp,$sp
	sw	$a0,16($fp)
	sw	$a1,20($fp)
	sw	$a2,24($fp)
	lw	$a0,16($fp)
	lw	$v0,16($fp)
	lw	$v1,24($fp)
	lw	$v0,0($v0)
	mult	$v1,$v0
	mflo	$v1
	lw	$v0,20($fp)
	addu	$v0,$v1,$v0
	sll	$v1,$v0,3
	lw	$v0,8($a0)
	addu	$v0,$v1,$v0
	l.d	$f0,0($v0)
	move	$sp,$fp
	lw	$fp,12($sp)
	addu	$sp,$sp,16
	j	$ra
	.end	value_obtain
	.size	value_obtain, .-value_obtain
	.rdata
	.align	2
$LC1:
	.ascii	"NO MATRIX CREATED ERROR\000"
	.text
	.align	2
	.globl	complete_matrix
	.ent	complete_matrix
complete_matrix:
	.frame	$fp,72,$ra		# vars= 24, regs= 3/0, args= 24, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,72
	.cprestore 24
	sw	$ra,64($sp)
	sw	$fp,60($sp)
	sw	$gp,56($sp)
	move	$fp,$sp
	sw	$a0,72($fp)
	sw	$a1,76($fp)
	lw	$v0,76($fp)
	bne	$v0,$zero,$L26
	la	$a0,__sF+176
	la	$a1,$LC1
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,52($fp)
	b	$L25
$L26:
	sw	$zero,32($fp)
$L27:
	lw	$v0,76($fp)
	lw	$v1,32($fp)
	lw	$v0,0($v0)
	sltu	$v0,$v1,$v0
	bne	$v0,$zero,$L30
	b	$L28
$L30:
	sw	$zero,36($fp)
$L31:
	lw	$v0,76($fp)
	lw	$v1,36($fp)
	lw	$v0,4($v0)
	sltu	$v0,$v1,$v0
	bne	$v0,$zero,$L34
	b	$L29
$L34:
	lw	$v0,76($fp)
	lw	$v1,0($v0)
	lw	$v0,32($fp)
	mult	$v1,$v0
	mflo	$v1
	lw	$v0,36($fp)
	addu	$v0,$v1,$v0
	sll	$v1,$v0,3
	lw	$v0,72($fp)
	addu	$v0,$v1,$v0
	l.d	$f0,0($v0)
	s.d	$f0,40($fp)
	l.d	$f0,40($fp)
	s.d	$f0,16($sp)
	lw	$a0,76($fp)
	lw	$a1,36($fp)
	lw	$a2,32($fp)
	la	$t9,index_value
	jal	$ra,$t9
	sw	$v0,48($fp)
	lw	$v1,48($fp)
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L33
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,52($fp)
	b	$L25
$L33:
	lw	$v0,36($fp)
	addu	$v0,$v0,1
	sw	$v0,36($fp)
	b	$L31
$L29:
	lw	$v0,32($fp)
	addu	$v0,$v0,1
	sw	$v0,32($fp)
	b	$L27
$L28:
	sw	$zero,52($fp)
$L25:
	lw	$v0,52($fp)
	move	$sp,$fp
	lw	$ra,64($sp)
	lw	$fp,60($sp)
	addu	$sp,$sp,72
	j	$ra
	.end	complete_matrix
	.size	complete_matrix, .-complete_matrix
	.align	2
	.globl	destroy_matrix
	.ent	destroy_matrix
destroy_matrix:
	.frame	$fp,48,$ra		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
	sw	$ra,40($sp)
	sw	$fp,36($sp)
	sw	$gp,32($sp)
	move	$fp,$sp
	sw	$a0,48($fp)
	lw	$v0,48($fp)
	bne	$v0,$zero,$L37
	la	$a0,__sF+176
	la	$a1,$LC1
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,24($fp)
	b	$L36
$L37:
	lw	$v0,48($fp)
	lw	$a0,8($v0)
	la	$t9,free
	jal	$ra,$t9
	lw	$a0,48($fp)
	la	$t9,free
	jal	$ra,$t9
	sw	$zero,24($fp)
$L36:
	lw	$v0,24($fp)
	move	$sp,$fp
	lw	$ra,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$ra
	.end	destroy_matrix
	.size	destroy_matrix, .-destroy_matrix
	.rdata
	.align	2
$LC2:
	.ascii	"Error al crear el archivo de salida\000"
	.align	2
$LC3:
	.ascii	"%li \000"
	.align	2
$LC4:
	.ascii	"%s\n\000"
	.align	2
$LC5:
	.ascii	"Resultado de la multiplicacion:\000"
	.align	2
$LC6:
	.ascii	"%lg \000"
	.align	2
$LC7:
	.ascii	"%lg\000"
	.align	2
$LC8:
	.ascii	"\n\000"
	.text
	.align	2
	.globl	print_matrix
	.ent	print_matrix
print_matrix:
	.frame	$fp,64,$ra		# vars= 24, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,64
	.cprestore 16
	sw	$ra,56($sp)
	sw	$fp,52($sp)
	sw	$gp,48($sp)
	move	$fp,$sp
	sw	$a0,64($fp)
	sw	$a1,68($fp)
	lw	$v0,68($fp)
	bne	$v0,$zero,$L39
	la	$a0,__sF+176
	la	$a1,$LC1
	la	$t9,fprintf
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,40($fp)
	b	$L38
$L39:
	lw	$v0,64($fp)
	bne	$v0,$zero,$L40
	la	$a0,$LC2
	la	$t9,perror
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,40($fp)
	b	$L38
$L40:
	lw	$v0,68($fp)
	la	$a0,__sF+88
	la	$a1,$LC3
	lw	$a2,0($v0)
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$a0,64($fp)
	la	$a1,$LC4
	la	$a2,$LC5
	la	$t9,fprintf
	jal	$ra,$t9
	sw	$zero,24($fp)
$L42:
	lw	$v0,68($fp)
	lw	$v1,24($fp)
	lw	$v0,0($v0)
	sltu	$v0,$v1,$v0
	bne	$v0,$zero,$L45
	b	$L43
$L45:
	li	$a0,124			# 0x7c
	lw	$a1,64($fp)
	la	$t9,fputc
	jal	$ra,$t9
	li	$a0,32			# 0x20
	lw	$a1,64($fp)
	la	$t9,fputc
	jal	$ra,$t9
	sw	$zero,28($fp)
$L46:
	lw	$v0,68($fp)
	lw	$v1,28($fp)
	lw	$v0,4($v0)
	sltu	$v0,$v1,$v0
	bne	$v0,$zero,$L49
	b	$L44
$L49:
	lw	$a0,68($fp)
	lw	$a1,28($fp)
	lw	$a2,24($fp)
	la	$t9,value_obtain
	jal	$ra,$t9
	s.d	$f0,32($fp)
	la	$a0,__sF+88
	la	$a1,$LC6
	lw	$a2,32($fp)
	lw	$a3,36($fp)
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$a0,64($fp)
	la	$a1,$LC7
	lw	$a2,32($fp)
	lw	$a3,36($fp)
	la	$t9,fprintf
	jal	$ra,$t9
	li	$a0,32			# 0x20
	lw	$a1,64($fp)
	la	$t9,fputc
	jal	$ra,$t9
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,28($fp)
	b	$L46
$L44:
	lw	$v0,24($fp)
	addu	$v0,$v0,1
	sw	$v0,24($fp)
	b	$L42
$L43:
	la	$a0,__sF+88
	la	$a1,$LC8
	la	$t9,fprintf
	jal	$ra,$t9
	li	$a0,10			# 0xa
	lw	$a1,64($fp)
	la	$t9,fputc
	jal	$ra,$t9
	lw	$a0,64($fp)
	la	$t9,fflush
	jal	$ra,$t9
	sw	$zero,40($fp)
$L38:
	lw	$v0,40($fp)
	move	$sp,$fp
	lw	$ra,56($sp)
	lw	$fp,52($sp)
	addu	$sp,$sp,64
	j	$ra
	.end	print_matrix
	.size	print_matrix, .-print_matrix
	.ident	"GCC: (GNU) 3.3.3 (NetBSD nb3 20040520)"
