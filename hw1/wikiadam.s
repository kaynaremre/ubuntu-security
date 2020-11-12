	.file	"wikiadam.c"
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -16(%rbp)
	movw	$1979, -2(%rbp)
	leaq	-16(%rbp), %rax
	movabsq	$7308335478013522529, %rdx
	movq	%rdx, (%rax)
	movabsq	$7308050764749760875, %rcx
	movq	%rcx, 8(%rax)
	movl	$1869441401, 16(%rax)
	movw	$99, 20(%rax)
	movzwl	-2(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
