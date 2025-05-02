	.arch armv8-a
	.file	"fgemm.c"
	.text
	.align	2
	.global	fgemm
	.type	fgemm, %function
fgemm:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	str	w2, [sp, 36]
	str	x3, [sp, 24]
	str	x4, [sp, 16]
	str	x5, [sp, 8]
	str	wzr, [sp, 48]
	b	.L2
.L7:
	str	wzr, [sp, 52]
	b	.L3
.L6:
	str	wzr, [sp, 56]
	str	wzr, [sp, 60]
	b	.L4
.L5:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 36]
	mul	w1, w1, w0
	ldr	w0, [sp, 60]
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 40]
	mul	w1, w1, w0
	ldr	w0, [sp, 52]
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	s0, [x0]
	fmul	s0, s1, s0
	ldr	s1, [sp, 56]
	fadd	s0, s1, s0
	str	s0, [sp, 56]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L4:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L5
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 40]
	mul	w1, w1, w0
	ldr	w0, [sp, 52]
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s0, [sp, 56]
	str	s0, [x0]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L3:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L7
	nop
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	fgemm, .-fgemm
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
