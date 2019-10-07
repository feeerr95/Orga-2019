	.section .mdebug.abi32
	.previous
	.abicalls
	.file 1 "main.c"
	.section	.debug_abbrev,"",@progbits
$Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
$Ldebug_info0:
	.section	.debug_line,"",@progbits
$Ldebug_line0:
	.text
$Ltext0:
	.file 2 "/usr/include/mips/int_types.h"
	.file 3 "/usr/include/mips/types.h"
	.file 4 "/usr/include/mips/ansi.h"
	.file 5 "/usr/include/sys/ansi.h"
	.file 6 "/usr/include/sys/types.h"
	.file 7 "/usr/include/sys/endian.h"
	.file 8 "/usr/include/pthread_types.h"
	.file 9 "/usr/include/stdlib.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "matrix.h"
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
	.ascii	"out.txt\000"
	.align	2
$LC10:
	.ascii	"a\000"
	.text
	.align	2
	.globl	main
$LFB29:
	.loc 1 7 0
	.ent	main
main:
	.frame	$fp,4200,$ra		# vars= 4160, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,4200
	.cprestore 16
$LCFI0:
	sw	$ra,4192($sp)
$LCFI1:
	sw	$fp,4188($sp)
$LCFI2:
	sw	$gp,4184($sp)
$LCFI3:
	move	$fp,$sp
$LCFI4:
	sw	$a0,4200($fp)
	sw	$a1,4204($fp)
	.loc 1 11 0
$LBB2:
	la	$v0,$LC0
	sw	$v0,4136($fp)
	.loc 1 14 0
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
	.loc 1 16 0
$LBB3:
	addu	$v0,$fp,40
	move	$a0,$v0
	la	$a1,$LC1
	addu	$a2,$fp,24
	la	$t9,sscanf
	jal	$ra,$t9
	sw	$v0,4140($fp)
	.loc 1 17 0
	lw	$v0,4140($fp)
	bne	$v0,$zero,$L21
	.loc 1 18 0
	la	$a0,__sF+176
	la	$a1,$LC2
	la	$t9,fprintf
	jal	$ra,$t9
	.loc 1 19 0
	li	$v0,1			# 0x1
	sw	$v0,4180($fp)
	b	$L17
$L21:
	.loc 1 21 0
	lw	$v1,24($fp)
	lw	$v0,24($fp)
	mult	$v1,$v0
	mflo	$v0
	sll	$v0,$v0,1
	sw	$v0,4144($fp)
	.loc 1 22 0
	lw	$v0,4144($fp)
	sll	$v0,$v0,3
	move	$a0,$v0
	la	$t9,malloc
	jal	$ra,$t9
	sw	$v0,4148($fp)
	.loc 1 23 0
	lw	$v0,4148($fp)
	bne	$v0,$zero,$L22
	.loc 1 24 0
	la	$a0,__sF+176
	la	$a1,$LC3
	la	$t9,fprintf
	jal	$ra,$t9
	.loc 1 25 0
	li	$v0,1			# 0x1
	sw	$v0,4180($fp)
	b	$L17
$L22:
	.loc 1 27 0
	addu	$v0,$fp,40
	move	$a0,$v0
	lw	$a1,4136($fp)
	la	$t9,strtok
	jal	$ra,$t9
	sw	$v0,4152($fp)
	.loc 1 28 0
$LBB4:
	sw	$zero,4156($fp)
$L23:
	lw	$v0,4156($fp)
	lw	$v1,4144($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L26
	b	$L24
$L26:
	.loc 1 29 0
$LBB5:
	move	$a0,$zero
	lw	$a1,4136($fp)
	la	$t9,strtok
	jal	$ra,$t9
	sw	$v0,4152($fp)
	.loc 1 30 0
	lw	$v0,4152($fp)
	bne	$v0,$zero,$L27
	.loc 1 31 0
	lw	$a0,4148($fp)
	la	$t9,free
	jal	$ra,$t9
	.loc 1 32 0
	la	$a0,__sF+176
	la	$a1,$LC4
	la	$a2,$LC5
	la	$t9,fprintf
	jal	$ra,$t9
	.loc 1 33 0
	li	$v0,1			# 0x1
	sw	$v0,4180($fp)
	b	$L17
$L27:
	.loc 1 36 0
	la	$v0,$LC6
	sw	$v0,4160($fp)
	.loc 1 37 0
	addu	$v0,$fp,4160
	lw	$a0,4152($fp)
	move	$a1,$v0
	la	$t9,strtod
	jal	$ra,$t9
	s.d	$f0,32($fp)
	.loc 1 38 0
	la	$a0,$LC6
	lw	$a1,4160($fp)
	la	$t9,strcmp
	jal	$ra,$t9
	beq	$v0,$zero,$L28
	la	$a0,$LC7
	lw	$a1,4160($fp)
	la	$t9,strcmp
	jal	$ra,$t9
	beq	$v0,$zero,$L28
	.loc 1 39 0
	lw	$a0,4148($fp)
	la	$t9,free
	jal	$ra,$t9
	.loc 1 40 0
	la	$a0,__sF+176
	la	$a1,$LC4
	la	$a2,$LC8
	la	$t9,fprintf
	jal	$ra,$t9
	.loc 1 41 0
	li	$v0,1			# 0x1
	sw	$v0,4180($fp)
	b	$L17
$L28:
	.loc 1 44 0
	lw	$v0,4156($fp)
	sll	$v1,$v0,3
	lw	$v0,4148($fp)
	addu	$v0,$v1,$v0
	l.d	$f0,32($fp)
	s.d	$f0,0($v0)
	.loc 1 28 0
$LBE5:
	lw	$v0,4156($fp)
	addu	$v0,$v0,1
	sw	$v0,4156($fp)
	b	$L23
$L24:
	.loc 1 47 0
$LBE4:
	lw	$v1,24($fp)
	lw	$v0,24($fp)
	mult	$v1,$v0
	mflo	$v0
	sll	$v0,$v0,3
	move	$a0,$v0
	la	$t9,malloc
	jal	$ra,$t9
	sw	$v0,4160($fp)
	.loc 1 48 0
	lw	$v1,24($fp)
	lw	$v0,24($fp)
	mult	$v1,$v0
	mflo	$v0
	sll	$v0,$v0,3
	lw	$a0,4160($fp)
	lw	$a1,4148($fp)
	move	$a2,$v0
	la	$t9,memcpy
	jal	$ra,$t9
	.loc 1 49 0
	lw	$v1,24($fp)
	lw	$v0,24($fp)
	mult	$v1,$v0
	mflo	$v0
	sll	$v0,$v0,3
	move	$a0,$v0
	la	$t9,malloc
	jal	$ra,$t9
	sw	$v0,4156($fp)
	.loc 1 50 0
	lw	$v1,24($fp)
	lw	$v0,24($fp)
	mult	$v1,$v0
	mflo	$v0
	sll	$v1,$v0,3
	lw	$v0,4148($fp)
	addu	$a1,$v1,$v0
	lw	$v1,24($fp)
	lw	$v0,24($fp)
	mult	$v1,$v0
	mflo	$v0
	sll	$v0,$v0,3
	lw	$a0,4156($fp)
	move	$a2,$v0
	la	$t9,memcpy
	jal	$ra,$t9
	.loc 1 52 0
	lw	$a0,24($fp)
	lw	$a1,24($fp)
	la	$t9,create_matrix
	jal	$ra,$t9
	sw	$v0,4164($fp)
	.loc 1 53 0
	lw	$a0,24($fp)
	lw	$a1,24($fp)
	la	$t9,create_matrix
	jal	$ra,$t9
	sw	$v0,4168($fp)
	.loc 1 55 0
	lw	$a0,4160($fp)
	lw	$a1,4164($fp)
	la	$t9,complete_matrix
	jal	$ra,$t9
	.loc 1 56 0
	lw	$a0,4156($fp)
	lw	$a1,4168($fp)
	la	$t9,complete_matrix
	jal	$ra,$t9
	.loc 1 58 0
	lw	$a0,4164($fp)
	lw	$a1,4168($fp)
	la	$t9,matrix_multiply
	jal	$ra,$t9
	sw	$v0,4172($fp)
	.loc 1 61 0
	la	$a0,$LC9
	la	$a1,$LC10
	la	$t9,fopen
	jal	$ra,$t9
	sw	$v0,4176($fp)
	.loc 1 63 0
	lw	$a0,4176($fp)
	lw	$a1,4172($fp)
	la	$t9,print_matrix
	jal	$ra,$t9
	.loc 1 65 0
	lw	$a0,4148($fp)
	la	$t9,free
	jal	$ra,$t9
	.loc 1 66 0
	lw	$a0,4160($fp)
	la	$t9,free
	jal	$ra,$t9
	.loc 1 67 0
	lw	$a0,4156($fp)
	la	$t9,free
	jal	$ra,$t9
	.loc 1 69 0
	lw	$a0,4164($fp)
	la	$t9,destroy_matrix
	jal	$ra,$t9
	.loc 1 70 0
	lw	$a0,4168($fp)
	la	$t9,destroy_matrix
	jal	$ra,$t9
	.loc 1 71 0
	lw	$a0,4172($fp)
	la	$t9,destroy_matrix
	jal	$ra,$t9
	.loc 1 73 0
	lw	$a0,4176($fp)
	la	$t9,fclose
	jal	$ra,$t9
$LBE3:
	b	$L18
$L19:
	.loc 1 75 0
	sw	$zero,4180($fp)
	.loc 1 76 0
$L17:
$LBE2:
	lw	$v0,4180($fp)
	move	$sp,$fp
	lw	$ra,4192($sp)
	lw	$fp,4188($sp)
	addu	$sp,$sp,4200
	j	$ra
	.end	main
$LFE29:
	.size	main, .-main
	.section	.debug_frame,"",@progbits
$Lframe0:
	.4byte	$LECIE0-$LSCIE0
$LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 4
	.byte	0x40
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x0
	.align	2
$LECIE0:
$LSFDE0:
	.4byte	$LEFDE0-$LASFDE0
$LASFDE0:
	.4byte	$Lframe0
	.4byte	$LFB29
	.4byte	$LFE29-$LFB29
	.byte	0x4
	.4byte	$LCFI0-$LFB29
	.byte	0xe
	.uleb128 0x1068
	.byte	0x4
	.4byte	$LCFI3-$LCFI0
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -3
	.byte	0x11
	.uleb128 0x40
	.sleb128 -2
	.byte	0x4
	.4byte	$LCFI4-$LCFI3
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0x1068
	.align	2
$LEFDE0:
	.align	0
	.text
$Letext0:
	.section	.debug_info
	.4byte	0xd18
	.2byte	0x2
	.4byte	$Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	$Ldebug_line0
	.4byte	$Letext0
	.4byte	$Ltext0
	.4byte	$LC234
	.4byte	$LC235
	.4byte	$LC236
	.byte	0x1
	.uleb128 0x2
	.4byte	$LC11
	.byte	0x2
	.byte	0x30
	.4byte	0x30
	.uleb128 0x3
	.4byte	$LC13
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.4byte	$LC12
	.byte	0x2
	.byte	0x31
	.4byte	0x42
	.uleb128 0x3
	.4byte	$LC14
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.4byte	$LC15
	.byte	0x2
	.byte	0x32
	.4byte	0x54
	.uleb128 0x3
	.4byte	$LC16
	.byte	0x2
	.byte	0x5
	.uleb128 0x2
	.4byte	$LC17
	.byte	0x2
	.byte	0x33
	.4byte	0x66
	.uleb128 0x3
	.4byte	$LC18
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC19
	.byte	0x2
	.byte	0x34
	.4byte	0x78
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	$LC20
	.byte	0x2
	.byte	0x35
	.4byte	0x8a
	.uleb128 0x3
	.4byte	$LC21
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC22
	.byte	0x2
	.byte	0x3e
	.4byte	0x9c
	.uleb128 0x3
	.4byte	$LC23
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	$LC24
	.byte	0x2
	.byte	0x40
	.4byte	0xae
	.uleb128 0x3
	.4byte	$LC25
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC26
	.byte	0x2
	.byte	0x4b
	.4byte	0x78
	.uleb128 0x2
	.4byte	$LC27
	.byte	0x2
	.byte	0x4c
	.4byte	0x8a
	.uleb128 0x2
	.4byte	$LC28
	.byte	0x3
	.byte	0x3b
	.4byte	0xd6
	.uleb128 0x3
	.4byte	$LC29
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	$LC30
	.byte	0x3
	.byte	0x3c
	.4byte	0xe8
	.uleb128 0x3
	.4byte	$LC31
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC32
	.byte	0x3
	.byte	0x3d
	.4byte	0xd6
	.uleb128 0x2
	.4byte	$LC33
	.byte	0x3
	.byte	0x46
	.4byte	0xe8
	.uleb128 0x2
	.4byte	$LC34
	.byte	0x3
	.byte	0x47
	.4byte	0xe8
	.uleb128 0x2
	.4byte	$LC35
	.byte	0x3
	.byte	0x49
	.4byte	0xe8
	.uleb128 0x2
	.4byte	$LC36
	.byte	0x3
	.byte	0x4a
	.4byte	0xe8
	.uleb128 0x2
	.4byte	$LC37
	.byte	0x3
	.byte	0x51
	.4byte	0xd6
	.uleb128 0x2
	.4byte	$LC38
	.byte	0x3
	.byte	0x5a
	.4byte	0x13c
	.uleb128 0x5
	.4byte	0x78
	.uleb128 0x6
	.4byte	0x160
	.byte	0x80
	.byte	0x4
	.byte	0x65
	.uleb128 0x7
	.4byte	$LC39
	.byte	0x4
	.byte	0x63
	.4byte	0x160
	.uleb128 0x7
	.4byte	$LC40
	.byte	0x4
	.byte	0x64
	.4byte	0x91
	.byte	0x0
	.uleb128 0x8
	.4byte	0x170
	.4byte	0x177
	.uleb128 0x9
	.4byte	0x170
	.byte	0x7f
	.byte	0x0
	.uleb128 0x3
	.4byte	$LC21
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.4byte	$LC41
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.4byte	$LC42
	.byte	0x4
	.byte	0x65
	.4byte	0x141
	.uleb128 0x2
	.4byte	$LC43
	.byte	0x5
	.byte	0x2c
	.4byte	0x194
	.uleb128 0xa
	.byte	0x4
	.4byte	0x177
	.uleb128 0x2
	.4byte	$LC44
	.byte	0x5
	.byte	0x2d
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC45
	.byte	0x5
	.byte	0x2e
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC46
	.byte	0x5
	.byte	0x2f
	.4byte	0x5b
	.uleb128 0x2
	.4byte	$LC47
	.byte	0x5
	.byte	0x30
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC48
	.byte	0x5
	.byte	0x31
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC49
	.byte	0x5
	.byte	0x32
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC50
	.byte	0x5
	.byte	0x33
	.4byte	0x37
	.uleb128 0x2
	.4byte	$LC51
	.byte	0x5
	.byte	0x34
	.4byte	0x8a
	.uleb128 0x2
	.4byte	$LC52
	.byte	0x5
	.byte	0x35
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC53
	.byte	0x5
	.byte	0x36
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC54
	.byte	0x5
	.byte	0x37
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC55
	.byte	0x6
	.byte	0x36
	.4byte	0x25
	.uleb128 0x2
	.4byte	$LC56
	.byte	0x6
	.byte	0x3b
	.4byte	0x37
	.uleb128 0x2
	.4byte	$LC57
	.byte	0x6
	.byte	0x40
	.4byte	0x49
	.uleb128 0x2
	.4byte	$LC58
	.byte	0x6
	.byte	0x45
	.4byte	0x5b
	.uleb128 0x2
	.4byte	$LC59
	.byte	0x6
	.byte	0x4a
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC60
	.byte	0x6
	.byte	0x4f
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC61
	.byte	0x6
	.byte	0x54
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC62
	.byte	0x6
	.byte	0x59
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC63
	.byte	0x6
	.byte	0x5d
	.4byte	0x37
	.uleb128 0x2
	.4byte	$LC64
	.byte	0x6
	.byte	0x5e
	.4byte	0x5b
	.uleb128 0x2
	.4byte	$LC65
	.byte	0x6
	.byte	0x5f
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC66
	.byte	0x6
	.byte	0x60
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC67
	.byte	0x7
	.byte	0x3a
	.4byte	0x1a5
	.uleb128 0x2
	.4byte	$LC68
	.byte	0x7
	.byte	0x3f
	.4byte	0x1b0
	.uleb128 0x2
	.4byte	$LC69
	.byte	0x6
	.byte	0x65
	.4byte	0x42
	.uleb128 0x2
	.4byte	$LC70
	.byte	0x6
	.byte	0x66
	.4byte	0x66
	.uleb128 0x2
	.4byte	$LC71
	.byte	0x6
	.byte	0x67
	.4byte	0x8a
	.uleb128 0x2
	.4byte	$LC72
	.byte	0x6
	.byte	0x68
	.4byte	0xe8
	.uleb128 0x2
	.4byte	$LC73
	.byte	0x6
	.byte	0x6a
	.4byte	0x42
	.uleb128 0x2
	.4byte	$LC74
	.byte	0x6
	.byte	0x6b
	.4byte	0x66
	.uleb128 0x2
	.4byte	$LC75
	.byte	0x6
	.byte	0x6c
	.4byte	0x8a
	.uleb128 0x2
	.4byte	$LC76
	.byte	0x6
	.byte	0x6d
	.4byte	0xe8
	.uleb128 0x2
	.4byte	$LC77
	.byte	0x6
	.byte	0x6f
	.4byte	0x2ce
	.uleb128 0x2
	.4byte	$LC78
	.byte	0x6
	.byte	0x72
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC79
	.byte	0x6
	.byte	0x73
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC80
	.byte	0x6
	.byte	0x74
	.4byte	0x331
	.uleb128 0xa
	.byte	0x4
	.4byte	0x31b
	.uleb128 0x2
	.4byte	$LC81
	.byte	0x6
	.byte	0x80
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC82
	.byte	0x6
	.byte	0x81
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC83
	.byte	0x6
	.byte	0x83
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC84
	.byte	0x6
	.byte	0x84
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC85
	.byte	0x6
	.byte	0x87
	.4byte	0x1fd
	.uleb128 0x2
	.4byte	$LC86
	.byte	0x6
	.byte	0x8c
	.4byte	0x208
	.uleb128 0x2
	.4byte	$LC87
	.byte	0x6
	.byte	0x91
	.4byte	0x189
	.uleb128 0x2
	.4byte	$LC88
	.byte	0x6
	.byte	0x99
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC89
	.byte	0x6
	.byte	0x9c
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC90
	.byte	0x6
	.byte	0x9d
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC91
	.byte	0x6
	.byte	0xa0
	.4byte	0x19a
	.uleb128 0x2
	.4byte	$LC92
	.byte	0x6
	.byte	0xa4
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC93
	.byte	0x6
	.byte	0xa5
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC94
	.byte	0x6
	.byte	0xa6
	.4byte	0xd6
	.uleb128 0x2
	.4byte	$LC95
	.byte	0x6
	.byte	0xa9
	.4byte	0x1bb
	.uleb128 0x2
	.4byte	$LC96
	.byte	0x6
	.byte	0xad
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC97
	.byte	0x6
	.byte	0xb0
	.4byte	0x1c6
	.uleb128 0x2
	.4byte	$LC98
	.byte	0x6
	.byte	0xb5
	.4byte	0x1d1
	.uleb128 0x2
	.4byte	$LC99
	.byte	0x6
	.byte	0xb8
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC100
	.byte	0x6
	.byte	0xb9
	.4byte	0x31b
	.uleb128 0x2
	.4byte	$LC101
	.byte	0x6
	.byte	0xba
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC102
	.byte	0x6
	.byte	0xbb
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC103
	.byte	0x6
	.byte	0xbe
	.4byte	0x1f2
	.uleb128 0x2
	.4byte	$LC104
	.byte	0x6
	.byte	0xc2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC105
	.byte	0x6
	.byte	0xfc
	.4byte	0xe8
	.uleb128 0xb
	.4byte	$LC106
	.byte	0x6
	.2byte	0x101
	.4byte	0x8a
	.uleb128 0xb
	.4byte	$LC107
	.byte	0x6
	.2byte	0x107
	.4byte	0x78
	.uleb128 0xb
	.4byte	$LC108
	.byte	0x6
	.2byte	0x10c
	.4byte	0xd6
	.uleb128 0xb
	.4byte	$LC109
	.byte	0x6
	.2byte	0x111
	.4byte	0x78
	.uleb128 0xb
	.4byte	$LC110
	.byte	0x6
	.2byte	0x116
	.4byte	0x78
	.uleb128 0xb
	.4byte	$LC111
	.byte	0x6
	.2byte	0x11b
	.4byte	0x78
	.uleb128 0xb
	.4byte	$LC112
	.byte	0x6
	.2byte	0x120
	.4byte	0x8a
	.uleb128 0xb
	.4byte	$LC113
	.byte	0x6
	.2byte	0x12d
	.4byte	0x6d
	.uleb128 0xc
	.4byte	0x4c7
	.4byte	$LC115
	.byte	0x20
	.byte	0x6
	.2byte	0x142
	.uleb128 0xd
	.4byte	$LC114
	.byte	0x6
	.2byte	0x143
	.4byte	0x4c7
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.4byte	0x4d7
	.4byte	0x49e
	.uleb128 0x9
	.4byte	0x170
	.byte	0x7
	.byte	0x0
	.uleb128 0xb
	.4byte	$LC115
	.byte	0x6
	.2byte	0x144
	.4byte	0x4aa
	.uleb128 0x2
	.4byte	$LC116
	.byte	0x8
	.byte	0x2e
	.4byte	0x13c
	.uleb128 0xe
	.4byte	0x517
	.4byte	$LC117
	.byte	0x8
	.byte	0x8
	.byte	0x39
	.uleb128 0xf
	.4byte	$LC118
	.byte	0x8
	.byte	0x39
	.4byte	0x51d
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xf
	.4byte	$LC119
	.byte	0x8
	.byte	0x39
	.4byte	0x523
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x10
	.4byte	$LC213
	.byte	0x1
	.uleb128 0xa
	.byte	0x4
	.4byte	0x517
	.uleb128 0xa
	.byte	0x4
	.4byte	0x51d
	.uleb128 0x2
	.4byte	$LC120
	.byte	0x8
	.byte	0x47
	.4byte	0x51d
	.uleb128 0x2
	.4byte	$LC121
	.byte	0x8
	.byte	0x48
	.4byte	0x53f
	.uleb128 0xe
	.4byte	0x576
	.4byte	$LC122
	.byte	0xc
	.byte	0x8
	.byte	0x3c
	.uleb128 0xf
	.4byte	$LC123
	.byte	0x8
	.byte	0x56
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xf
	.4byte	$LC124
	.byte	0x8
	.byte	0x58
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xf
	.4byte	$LC125
	.byte	0x8
	.byte	0x59
	.4byte	0x885
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC126
	.byte	0x8
	.byte	0x49
	.4byte	0x581
	.uleb128 0xe
	.4byte	0x5e2
	.4byte	$LC127
	.byte	0x1c
	.byte	0x8
	.byte	0x3d
	.uleb128 0xf
	.4byte	$LC128
	.byte	0x8
	.byte	0x5d
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xf
	.4byte	$LC129
	.byte	0x8
	.byte	0x66
	.4byte	0x13c
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xf
	.4byte	$LC130
	.byte	0x8
	.byte	0x69
	.4byte	0x13c
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xf
	.4byte	$LC131
	.byte	0x8
	.byte	0x6a
	.4byte	0x529
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.uleb128 0xf
	.4byte	$LC132
	.byte	0x8
	.byte	0x6b
	.4byte	0x4ee
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xf
	.4byte	$LC133
	.byte	0x8
	.byte	0x6c
	.4byte	0x885
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC134
	.byte	0x8
	.byte	0x4a
	.4byte	0x5ed
	.uleb128 0xe
	.4byte	0x616
	.4byte	$LC135
	.byte	0x8
	.byte	0x8
	.byte	0x3e
	.uleb128 0xf
	.4byte	$LC136
	.byte	0x8
	.byte	0x7c
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xf
	.4byte	$LC137
	.byte	0x8
	.byte	0x7d
	.4byte	0x885
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC138
	.byte	0x8
	.byte	0x4b
	.4byte	0x621
	.uleb128 0xe
	.4byte	0x674
	.4byte	$LC139
	.byte	0x18
	.byte	0x8
	.byte	0x3f
	.uleb128 0xf
	.4byte	$LC140
	.byte	0x8
	.byte	0x85
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xf
	.4byte	$LC141
	.byte	0x8
	.byte	0x88
	.4byte	0x13c
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xf
	.4byte	$LC142
	.byte	0x8
	.byte	0x89
	.4byte	0x4ee
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xf
	.4byte	$LC143
	.byte	0x8
	.byte	0x8b
	.4byte	0x887
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xf
	.4byte	$LC144
	.byte	0x8
	.byte	0x8c
	.4byte	0x885
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC145
	.byte	0x8
	.byte	0x4c
	.4byte	0x67f
	.uleb128 0xe
	.4byte	0x6a8
	.4byte	$LC146
	.byte	0x8
	.byte	0x8
	.byte	0x40
	.uleb128 0xf
	.4byte	$LC147
	.byte	0x8
	.byte	0x9a
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xf
	.4byte	$LC148
	.byte	0x8
	.byte	0x9b
	.4byte	0x885
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC149
	.byte	0x8
	.byte	0x4d
	.4byte	0x6b3
	.uleb128 0xe
	.4byte	0x6dc
	.4byte	$LC150
	.byte	0x20
	.byte	0x8
	.byte	0x4d
	.uleb128 0xf
	.4byte	$LC151
	.byte	0x8
	.byte	0xa2
	.4byte	0x576
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xf
	.4byte	$LC152
	.byte	0x8
	.byte	0xa3
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC153
	.byte	0x8
	.byte	0x4e
	.4byte	0x6e7
	.uleb128 0xe
	.4byte	0x71e
	.4byte	$LC154
	.byte	0xc
	.byte	0x8
	.byte	0x4e
	.uleb128 0xf
	.4byte	$LC155
	.byte	0x8
	.byte	0xa9
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xf
	.4byte	$LC156
	.byte	0x8
	.byte	0xaa
	.4byte	0x13c
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xf
	.4byte	$LC157
	.byte	0x8
	.byte	0xab
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC158
	.byte	0x8
	.byte	0x4f
	.4byte	0x729
	.uleb128 0xe
	.4byte	0x798
	.4byte	$LC159
	.byte	0x24
	.byte	0x8
	.byte	0x42
	.uleb128 0xf
	.4byte	$LC160
	.byte	0x8
	.byte	0xb9
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xf
	.4byte	$LC161
	.byte	0x8
	.byte	0xbc
	.4byte	0x13c
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xf
	.4byte	$LC162
	.byte	0x8
	.byte	0xbe
	.4byte	0x4ee
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xf
	.4byte	$LC163
	.byte	0x8
	.byte	0xbf
	.4byte	0x4ee
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xf
	.4byte	$LC164
	.byte	0x8
	.byte	0xc0
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.uleb128 0xf
	.4byte	$LC165
	.byte	0x8
	.byte	0xc1
	.4byte	0x529
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.uleb128 0xf
	.4byte	$LC166
	.byte	0x8
	.byte	0xc2
	.4byte	0x885
	.byte	0x2
	.byte	0x10
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC167
	.byte	0x8
	.byte	0x50
	.4byte	0x7a3
	.uleb128 0xe
	.4byte	0x7cc
	.4byte	$LC168
	.byte	0x8
	.byte	0x8
	.byte	0x43
	.uleb128 0xf
	.4byte	$LC169
	.byte	0x8
	.byte	0xd2
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xf
	.4byte	$LC170
	.byte	0x8
	.byte	0xd3
	.4byte	0x885
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC171
	.byte	0x8
	.byte	0x51
	.4byte	0x7d7
	.uleb128 0xe
	.4byte	0x846
	.4byte	$LC172
	.byte	0x20
	.byte	0x8
	.byte	0x44
	.uleb128 0xf
	.4byte	$LC173
	.byte	0x8
	.byte	0xda
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xf
	.4byte	$LC174
	.byte	0x8
	.byte	0xdd
	.4byte	0x13c
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xf
	.4byte	$LC175
	.byte	0x8
	.byte	0xdf
	.4byte	0x4ee
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xf
	.4byte	$LC176
	.byte	0x8
	.byte	0xe0
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xf
	.4byte	$LC177
	.byte	0x8
	.byte	0xe1
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.uleb128 0xf
	.4byte	$LC178
	.byte	0x8
	.byte	0xe2
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.uleb128 0xf
	.4byte	$LC179
	.byte	0x8
	.byte	0xe4
	.4byte	0x885
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC180
	.byte	0x8
	.byte	0x52
	.4byte	0x851
	.uleb128 0xe
	.4byte	0x87a
	.4byte	$LC181
	.byte	0x8
	.byte	0x8
	.byte	0x45
	.uleb128 0xf
	.4byte	$LC182
	.byte	0x8
	.byte	0xeb
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xf
	.4byte	$LC183
	.byte	0x8
	.byte	0xec
	.4byte	0x885
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC184
	.byte	0x8
	.byte	0x53
	.4byte	0x78
	.uleb128 0x11
	.byte	0x4
	.uleb128 0xa
	.byte	0x4
	.4byte	0x576
	.uleb128 0x2
	.4byte	$LC185
	.byte	0x9
	.byte	0x34
	.4byte	0x78
	.uleb128 0x12
	.4byte	0x8bd
	.byte	0x8
	.byte	0x9
	.byte	0x3b
	.uleb128 0xf
	.4byte	$LC186
	.byte	0x9
	.byte	0x39
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0x13
	.ascii	"rem\000"
	.byte	0x9
	.byte	0x3a
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC187
	.byte	0x9
	.byte	0x3b
	.4byte	0x898
	.uleb128 0x12
	.4byte	0x8ed
	.byte	0x8
	.byte	0x9
	.byte	0x40
	.uleb128 0xf
	.4byte	$LC186
	.byte	0x9
	.byte	0x3e
	.4byte	0xd6
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0x13
	.ascii	"rem\000"
	.byte	0x9
	.byte	0x3f
	.4byte	0xd6
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC188
	.byte	0x9
	.byte	0x40
	.4byte	0x8c8
	.uleb128 0x12
	.4byte	0x91d
	.byte	0x10
	.byte	0x9
	.byte	0x4a
	.uleb128 0xf
	.4byte	$LC186
	.byte	0x9
	.byte	0x47
	.4byte	0x9c
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0x13
	.ascii	"rem\000"
	.byte	0x9
	.byte	0x49
	.4byte	0x9c
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC189
	.byte	0x9
	.byte	0x4a
	.4byte	0x8f8
	.uleb128 0x12
	.4byte	0x94d
	.byte	0x10
	.byte	0x9
	.byte	0x51
	.uleb128 0xf
	.4byte	$LC186
	.byte	0x9
	.byte	0x4f
	.4byte	0x31b
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0x13
	.ascii	"rem\000"
	.byte	0x9
	.byte	0x50
	.4byte	0x31b
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC190
	.byte	0x9
	.byte	0x51
	.4byte	0x928
	.uleb128 0xe
	.4byte	0x973
	.4byte	$LC191
	.byte	0x8
	.byte	0xa
	.byte	0x3c
	.uleb128 0xf
	.4byte	$LC192
	.byte	0xa
	.byte	0x3d
	.4byte	0x1c6
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC193
	.byte	0xa
	.byte	0x3e
	.4byte	0x958
	.uleb128 0xe
	.4byte	0x9a7
	.4byte	$LC194
	.byte	0x8
	.byte	0xa
	.byte	0x4a
	.uleb128 0xf
	.4byte	$LC195
	.byte	0xa
	.byte	0x4b
	.4byte	0x9a7
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xf
	.4byte	$LC196
	.byte	0xa
	.byte	0x4c
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x42
	.uleb128 0xe
	.4byte	0xacf
	.4byte	$LC197
	.byte	0x58
	.byte	0xa
	.byte	0x69
	.uleb128 0x13
	.ascii	"_p\000"
	.byte	0xa
	.byte	0x6a
	.4byte	0x9a7
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0x13
	.ascii	"_r\000"
	.byte	0xa
	.byte	0x6b
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0x13
	.ascii	"_w\000"
	.byte	0xa
	.byte	0x6c
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xf
	.4byte	$LC198
	.byte	0xa
	.byte	0x6d
	.4byte	0x54
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.uleb128 0xf
	.4byte	$LC199
	.byte	0xa
	.byte	0x6e
	.4byte	0x54
	.byte	0x2
	.byte	0x10
	.uleb128 0xe
	.uleb128 0x13
	.ascii	"_bf\000"
	.byte	0xa
	.byte	0x6f
	.4byte	0x97e
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xf
	.4byte	$LC200
	.byte	0xa
	.byte	0x70
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.uleb128 0xf
	.4byte	$LC201
	.byte	0xa
	.byte	0x73
	.4byte	0x885
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.uleb128 0xf
	.4byte	$LC202
	.byte	0xa
	.byte	0x74
	.4byte	0xadf
	.byte	0x2
	.byte	0x10
	.uleb128 0x20
	.uleb128 0xf
	.4byte	$LC203
	.byte	0xa
	.byte	0x75
	.4byte	0xaff
	.byte	0x2
	.byte	0x10
	.uleb128 0x24
	.uleb128 0xf
	.4byte	$LC204
	.byte	0xa
	.byte	0x76
	.4byte	0xb1f
	.byte	0x2
	.byte	0x10
	.uleb128 0x28
	.uleb128 0xf
	.4byte	$LC205
	.byte	0xa
	.byte	0x77
	.4byte	0xb4a
	.byte	0x2
	.byte	0x10
	.uleb128 0x2c
	.uleb128 0xf
	.4byte	$LC206
	.byte	0xa
	.byte	0x7a
	.4byte	0x97e
	.byte	0x2
	.byte	0x10
	.uleb128 0x30
	.uleb128 0x13
	.ascii	"_up\000"
	.byte	0xa
	.byte	0x7d
	.4byte	0x9a7
	.byte	0x2
	.byte	0x10
	.uleb128 0x38
	.uleb128 0x13
	.ascii	"_ur\000"
	.byte	0xa
	.byte	0x7e
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x3c
	.uleb128 0xf
	.4byte	$LC207
	.byte	0xa
	.byte	0x81
	.4byte	0xb50
	.byte	0x2
	.byte	0x10
	.uleb128 0x40
	.uleb128 0xf
	.4byte	$LC208
	.byte	0xa
	.byte	0x82
	.4byte	0xb60
	.byte	0x2
	.byte	0x10
	.uleb128 0x43
	.uleb128 0x13
	.ascii	"_lb\000"
	.byte	0xa
	.byte	0x85
	.4byte	0x97e
	.byte	0x2
	.byte	0x10
	.uleb128 0x44
	.uleb128 0xf
	.4byte	$LC209
	.byte	0xa
	.byte	0x88
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4c
	.uleb128 0xf
	.4byte	$LC210
	.byte	0xa
	.byte	0x89
	.4byte	0x973
	.byte	0x2
	.byte	0x10
	.uleb128 0x50
	.byte	0x0
	.uleb128 0x14
	.4byte	0xadf
	.byte	0x1
	.4byte	0x78
	.uleb128 0x15
	.4byte	0x885
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xacf
	.uleb128 0x14
	.4byte	0xaff
	.byte	0x1
	.4byte	0x78
	.uleb128 0x15
	.4byte	0x885
	.uleb128 0x15
	.4byte	0x194
	.uleb128 0x15
	.4byte	0x78
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xae5
	.uleb128 0x14
	.4byte	0xb1f
	.byte	0x1
	.4byte	0x973
	.uleb128 0x15
	.4byte	0x885
	.uleb128 0x15
	.4byte	0x973
	.uleb128 0x15
	.4byte	0x78
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xb05
	.uleb128 0x14
	.4byte	0xb3f
	.byte	0x1
	.4byte	0x78
	.uleb128 0x15
	.4byte	0x885
	.uleb128 0x15
	.4byte	0xb3f
	.uleb128 0x15
	.4byte	0x78
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xb45
	.uleb128 0x16
	.4byte	0x177
	.uleb128 0xa
	.byte	0x4
	.4byte	0xb25
	.uleb128 0x8
	.4byte	0xb60
	.4byte	0x42
	.uleb128 0x9
	.4byte	0x170
	.byte	0x2
	.byte	0x0
	.uleb128 0x8
	.4byte	0xb70
	.4byte	0x42
	.uleb128 0x9
	.4byte	0x170
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC211
	.byte	0xa
	.byte	0x8a
	.4byte	0x9ad
	.uleb128 0x2
	.4byte	$LC212
	.byte	0xb
	.byte	0x9
	.4byte	0xb86
	.uleb128 0x10
	.4byte	$LC214
	.byte	0x1
	.uleb128 0x17
	.4byte	0xcd2
	.byte	0x1
	.4byte	$LC237
	.byte	0x1
	.byte	0x7
	.byte	0x1
	.4byte	0x78
	.4byte	$LFB29
	.4byte	$LFE29
	.4byte	$LSFDE0
	.byte	0x1
	.byte	0x6e
	.uleb128 0x18
	.4byte	$LC215
	.byte	0x1
	.byte	0x6
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 4200
	.uleb128 0x18
	.4byte	$LC216
	.byte	0x1
	.byte	0x6
	.4byte	0xcd2
	.byte	0x3
	.byte	0x91
	.sleb128 4204
	.uleb128 0x19
	.4byte	$LC217
	.byte	0x1
	.byte	0x8
	.4byte	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x19
	.4byte	$LC218
	.byte	0x1
	.byte	0x9
	.4byte	0xcd8
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x19
	.4byte	$LC219
	.byte	0x1
	.byte	0xa
	.4byte	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x19
	.4byte	$LC220
	.byte	0x1
	.byte	0xb
	.4byte	0x194
	.byte	0x3
	.byte	0x91
	.sleb128 4136
	.uleb128 0x1a
	.ascii	"ok\000"
	.byte	0x1
	.byte	0xc
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 4140
	.uleb128 0x1b
	.4byte	$LBB3
	.4byte	$LBE3
	.uleb128 0x19
	.4byte	$LC221
	.byte	0x1
	.byte	0x15
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 4144
	.uleb128 0x19
	.4byte	$LC222
	.byte	0x1
	.byte	0x16
	.4byte	0xcf0
	.byte	0x3
	.byte	0x91
	.sleb128 4148
	.uleb128 0x19
	.4byte	$LC223
	.byte	0x1
	.byte	0x1b
	.4byte	0x194
	.byte	0x3
	.byte	0x91
	.sleb128 4152
	.uleb128 0x19
	.4byte	$LC224
	.byte	0x1
	.byte	0x2f
	.4byte	0xcf0
	.byte	0x3
	.byte	0x91
	.sleb128 4160
	.uleb128 0x19
	.4byte	$LC225
	.byte	0x1
	.byte	0x31
	.4byte	0xcf0
	.byte	0x3
	.byte	0x91
	.sleb128 4156
	.uleb128 0x19
	.4byte	$LC226
	.byte	0x1
	.byte	0x34
	.4byte	0xcf6
	.byte	0x3
	.byte	0x91
	.sleb128 4164
	.uleb128 0x19
	.4byte	$LC227
	.byte	0x1
	.byte	0x35
	.4byte	0xcf6
	.byte	0x3
	.byte	0x91
	.sleb128 4168
	.uleb128 0x19
	.4byte	$LC228
	.byte	0x1
	.byte	0x3a
	.4byte	0xcf6
	.byte	0x3
	.byte	0x91
	.sleb128 4172
	.uleb128 0x19
	.4byte	$LC229
	.byte	0x1
	.byte	0x3c
	.4byte	0xcfc
	.byte	0x3
	.byte	0x91
	.sleb128 4176
	.uleb128 0x1b
	.4byte	$LBB4
	.4byte	$LBE4
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 4156
	.uleb128 0x1b
	.4byte	$LBB5
	.4byte	$LBE5
	.uleb128 0x19
	.4byte	$LC230
	.byte	0x1
	.byte	0x24
	.4byte	0x194
	.byte	0x3
	.byte	0x91
	.sleb128 4160
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xb3f
	.uleb128 0x3
	.4byte	$LC231
	.byte	0x8
	.byte	0x4
	.uleb128 0x8
	.4byte	0xcf0
	.4byte	0x177
	.uleb128 0x1c
	.4byte	0x170
	.2byte	0xfff
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xcd8
	.uleb128 0xa
	.byte	0x4
	.4byte	0xb7b
	.uleb128 0xa
	.byte	0x4
	.4byte	0xb70
	.uleb128 0x10
	.4byte	$LC232
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.4byte	0xb70
	.uleb128 0x1e
	.4byte	$LC233
	.byte	0xa
	.byte	0x8d
	.4byte	0xd08
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x2001
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x3c
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x17
	.2byte	0x2
	.4byte	$Ldebug_info0
	.4byte	0xd1c
	.4byte	0xb8c
	.ascii	"main\000"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	$Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	$Ltext0
	.4byte	$Letext0-$Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
$LC206:
	.ascii	"_ext\000"
$LC221:
	.ascii	"ammount\000"
$LC174:
	.ascii	"ptb_lock\000"
$LC110:
	.ascii	"timer_t\000"
$LC230:
	.ascii	"error\000"
$LC223:
	.ascii	"string\000"
$LC126:
	.ascii	"pthread_mutex_t\000"
$LC168:
	.ascii	"__pthread_rwlockattr_st\000"
$LC122:
	.ascii	"__pthread_attr_st\000"
$LC130:
	.ascii	"ptm_interlock\000"
$LC218:
	.ascii	"value\000"
$LC34:
	.ascii	"psize_t\000"
$LC18:
	.ascii	"short unsigned int\000"
$LC200:
	.ascii	"_lbfsize\000"
$LC117:
	.ascii	"pthread_queue_t\000"
$LC14:
	.ascii	"unsigned char\000"
$LC150:
	.ascii	"__pthread_once_st\000"
$LC95:
	.ascii	"mode_t\000"
$LC112:
	.ascii	"useconds_t\000"
$LC175:
	.ascii	"ptb_waiters\000"
$LC170:
	.ascii	"ptra_private\000"
$LC137:
	.ascii	"ptma_private\000"
$LC97:
	.ascii	"off_t\000"
$LC164:
	.ascii	"ptr_nreaders\000"
$LC166:
	.ascii	"ptr_private\000"
$LC194:
	.ascii	"__sbuf\000"
$LC204:
	.ascii	"_seek\000"
$LC46:
	.ascii	"__in_port_t\000"
$LC106:
	.ascii	"size_t\000"
$LC81:
	.ascii	"longlong_t\000"
$LC92:
	.ascii	"id_t\000"
$LC203:
	.ascii	"_read\000"
$LC82:
	.ascii	"u_longlong_t\000"
$LC48:
	.ascii	"__off_t\000"
$LC129:
	.ascii	"ptm_lock\000"
$LC160:
	.ascii	"ptr_magic\000"
$LC169:
	.ascii	"ptra_magic\000"
$LC152:
	.ascii	"pto_done\000"
$LC32:
	.ascii	"mips_fpreg_t\000"
$LC54:
	.ascii	"__fsfilcnt_t\000"
$LC111:
	.ascii	"suseconds_t\000"
$LC86:
	.ascii	"fsfilcnt_t\000"
$LC77:
	.ascii	"cpuid_t\000"
$LC197:
	.ascii	"__sFILE\000"
$LC39:
	.ascii	"__mbstate8\000"
$LC30:
	.ascii	"mips_ureg_t\000"
$LC118:
	.ascii	"ptqh_first\000"
$LC71:
	.ascii	"u_int\000"
$LC55:
	.ascii	"int8_t\000"
$LC113:
	.ascii	"__fd_mask\000"
$LC40:
	.ascii	"__mbstateL\000"
$LC220:
	.ascii	"delim\000"
$LC219:
	.ascii	"buffer\000"
$LC73:
	.ascii	"unchar\000"
$LC84:
	.ascii	"blksize_t\000"
$LC138:
	.ascii	"pthread_cond_t\000"
$LC133:
	.ascii	"ptm_private\000"
$LC136:
	.ascii	"ptma_magic\000"
$LC187:
	.ascii	"div_t\000"
$LC190:
	.ascii	"qdiv_t\000"
$LC234:
	.ascii	"main.c\000"
$LC196:
	.ascii	"_size\000"
$LC202:
	.ascii	"_close\000"
$LC163:
	.ascii	"ptr_wblocked\000"
$LC93:
	.ascii	"ino_t\000"
$LC193:
	.ascii	"fpos_t\000"
$LC24:
	.ascii	"__uint64_t\000"
$LC215:
	.ascii	"argc\000"
$LC98:
	.ascii	"pid_t\000"
$LC36:
	.ascii	"vsize_t\000"
$LC62:
	.ascii	"uint64_t\000"
$LC115:
	.ascii	"fd_set\000"
$LC216:
	.ascii	"argv\000"
$LC201:
	.ascii	"_cookie\000"
$LC189:
	.ascii	"lldiv_t\000"
$LC195:
	.ascii	"_base\000"
$LC148:
	.ascii	"ptca_private\000"
$LC233:
	.ascii	"__sF\000"
$LC191:
	.ascii	"__sfpos\000"
$LC49:
	.ascii	"__pid_t\000"
$LC209:
	.ascii	"_blksize\000"
$LC31:
	.ascii	"long unsigned int\000"
$LC94:
	.ascii	"key_t\000"
$LC80:
	.ascii	"qaddr_t\000"
$LC20:
	.ascii	"__uint32_t\000"
$LC171:
	.ascii	"pthread_barrier_t\000"
$LC144:
	.ascii	"ptc_private\000"
$LC210:
	.ascii	"_offset\000"
$LC186:
	.ascii	"quot\000"
$LC89:
	.ascii	"dev_t\000"
$LC105:
	.ascii	"clock_t\000"
$LC99:
	.ascii	"lwpid_t\000"
$LC207:
	.ascii	"_ubuf\000"
$LC208:
	.ascii	"_nbuf\000"
$LC16:
	.ascii	"short int\000"
$LC63:
	.ascii	"u_int8_t\000"
$LC145:
	.ascii	"pthread_condattr_t\000"
$LC61:
	.ascii	"int64_t\000"
$LC103:
	.ascii	"uid_t\000"
$LC182:
	.ascii	"ptba_magic\000"
$LC23:
	.ascii	"long long int\000"
$LC181:
	.ascii	"__pthread_barrierattr_st\000"
$LC167:
	.ascii	"pthread_rwlockattr_t\000"
$LC90:
	.ascii	"fixpt_t\000"
$LC88:
	.ascii	"daddr_t\000"
$LC237:
	.ascii	"main\000"
$LC25:
	.ascii	"long long unsigned int\000"
$LC236:
	.ascii	"GNU C 3.3.3 (NetBSD nb3 20040520) -g\000"
$LC52:
	.ascii	"__uid_t\000"
$LC211:
	.ascii	"FILE\000"
$LC17:
	.ascii	"__uint16_t\000"
$LC96:
	.ascii	"nlink_t\000"
$LC102:
	.ascii	"swblk_t\000"
$LC116:
	.ascii	"pthread_spin_t\000"
$LC101:
	.ascii	"segsz_t\000"
$LC180:
	.ascii	"pthread_barrierattr_t\000"
$LC104:
	.ascii	"dtime_t\000"
$LC41:
	.ascii	"char\000"
$LC188:
	.ascii	"ldiv_t\000"
$LC147:
	.ascii	"ptca_magic\000"
$LC33:
	.ascii	"paddr_t\000"
$LC224:
	.ascii	"values_A\000"
$LC225:
	.ascii	"values_B\000"
$LC177:
	.ascii	"ptb_curcount\000"
$LC59:
	.ascii	"int32_t\000"
$LC149:
	.ascii	"pthread_once_t\000"
$LC35:
	.ascii	"vaddr_t\000"
$LC183:
	.ascii	"ptba_private\000"
$LC192:
	.ascii	"_pos\000"
$LC214:
	.ascii	"matrix\000"
$LC124:
	.ascii	"pta_flags\000"
$LC226:
	.ascii	"matrix_A\000"
$LC227:
	.ascii	"matrix_B\000"
$LC228:
	.ascii	"matrix_C\000"
$LC56:
	.ascii	"uint8_t\000"
$LC141:
	.ascii	"ptc_lock\000"
$LC28:
	.ascii	"mips_reg_t\000"
$LC162:
	.ascii	"ptr_rblocked\000"
$LC87:
	.ascii	"caddr_t\000"
$LC154:
	.ascii	"__pthread_spinlock_st\000"
$LC179:
	.ascii	"ptb_private\000"
$LC159:
	.ascii	"__pthread_rwlock_st\000"
$LC140:
	.ascii	"ptc_magic\000"
$LC75:
	.ascii	"uint\000"
$LC146:
	.ascii	"__pthread_condattr_st\000"
$LC212:
	.ascii	"matrix_t\000"
$LC157:
	.ascii	"pts_flags\000"
$LC143:
	.ascii	"ptc_mutex\000"
$LC213:
	.ascii	"__pthread_st\000"
$LC198:
	.ascii	"_flags\000"
$LC158:
	.ascii	"pthread_rwlock_t\000"
$LC26:
	.ascii	"__intptr_t\000"
$LC173:
	.ascii	"ptb_magic\000"
$LC57:
	.ascii	"int16_t\000"
$LC83:
	.ascii	"blkcnt_t\000"
$LC185:
	.ascii	"wchar_t\000"
$LC151:
	.ascii	"pto_mutex\000"
$LC222:
	.ascii	"values\000"
$LC153:
	.ascii	"pthread_spinlock_t\000"
$LC125:
	.ascii	"pta_private\000"
$LC13:
	.ascii	"signed char\000"
$LC127:
	.ascii	"__pthread_mutex_st\000"
$LC47:
	.ascii	"__mode_t\000"
$LC37:
	.ascii	"register_t\000"
$LC132:
	.ascii	"ptm_blocked\000"
$LC109:
	.ascii	"clockid_t\000"
$LC178:
	.ascii	"ptb_generation\000"
$LC21:
	.ascii	"unsigned int\000"
$LC79:
	.ascii	"quad_t\000"
$LC72:
	.ascii	"u_long\000"
$LC165:
	.ascii	"ptr_writer\000"
$LC229:
	.ascii	"file\000"
$LC161:
	.ascii	"ptr_interlock\000"
$LC66:
	.ascii	"u_int64_t\000"
$LC134:
	.ascii	"pthread_mutexattr_t\000"
$LC131:
	.ascii	"ptm_owner\000"
$LC184:
	.ascii	"pthread_key_t\000"
$LC76:
	.ascii	"ulong\000"
$LC69:
	.ascii	"u_char\000"
$LC51:
	.ascii	"__socklen_t\000"
$LC107:
	.ascii	"ssize_t\000"
$LC139:
	.ascii	"__pthread_cond_st\000"
$LC22:
	.ascii	"__int64_t\000"
$LC120:
	.ascii	"pthread_t\000"
$LC199:
	.ascii	"_file\000"
$LC67:
	.ascii	"in_addr_t\000"
$LC11:
	.ascii	"__int8_t\000"
$LC53:
	.ascii	"__fsblkcnt_t\000"
$LC91:
	.ascii	"gid_t\000"
$LC85:
	.ascii	"fsblkcnt_t\000"
$LC235:
	.ascii	"/home/tp0/Orga-2019-tp0\000"
$LC38:
	.ascii	"__cpu_simple_lock_t\000"
$LC65:
	.ascii	"u_int32_t\000"
$LC156:
	.ascii	"pts_spin\000"
$LC42:
	.ascii	"__mbstate_t\000"
$LC119:
	.ascii	"ptqh_last\000"
$LC74:
	.ascii	"ushort\000"
$LC27:
	.ascii	"__uintptr_t\000"
$LC44:
	.ascii	"__gid_t\000"
$LC19:
	.ascii	"__int32_t\000"
$LC176:
	.ascii	"ptb_initcount\000"
$LC135:
	.ascii	"__pthread_mutexattr_st\000"
$LC205:
	.ascii	"_write\000"
$LC12:
	.ascii	"__uint8_t\000"
$LC114:
	.ascii	"fds_bits\000"
$LC123:
	.ascii	"pta_magic\000"
$LC232:
	.ascii	"__pthread_spin_st\000"
$LC58:
	.ascii	"uint16_t\000"
$LC217:
	.ascii	"size\000"
$LC29:
	.ascii	"long int\000"
$LC60:
	.ascii	"uint32_t\000"
$LC121:
	.ascii	"pthread_attr_t\000"
$LC43:
	.ascii	"__caddr_t\000"
$LC68:
	.ascii	"in_port_t\000"
$LC172:
	.ascii	"__pthread_barrier_st\000"
$LC64:
	.ascii	"u_int16_t\000"
$LC231:
	.ascii	"double\000"
$LC108:
	.ascii	"time_t\000"
$LC128:
	.ascii	"ptm_magic\000"
$LC78:
	.ascii	"u_quad_t\000"
$LC155:
	.ascii	"pts_magic\000"
$LC45:
	.ascii	"__in_addr_t\000"
$LC100:
	.ascii	"rlim_t\000"
$LC50:
	.ascii	"__sa_family_t\000"
$LC70:
	.ascii	"u_short\000"
$LC15:
	.ascii	"__int16_t\000"
$LC142:
	.ascii	"ptc_waiters\000"
	.ident	"GCC: (GNU) 3.3.3 (NetBSD nb3 20040520)"
