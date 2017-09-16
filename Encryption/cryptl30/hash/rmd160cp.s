#include "asm.h"
.text
.globl FUNCTION(RIPEMD160Transform)
.align ALIGN
FUNCTION(RIPEMD160Transform):
	pushl %ebp
	pushl %esi
	pushl %edi
	pushl %ebx
	mov 20(%esp), %eax
	mov 24(%esp), %edx
	subl $64, %esp
	mov (%edx), %edi
	mov 4(%edx), %ebp
	mov %edi, (%esp)
	mov %ebp, 4(%esp)
	mov 8(%edx), %edi
	mov 12(%edx), %ebp
	mov %edi, 8(%esp)
	mov %ebp, 12(%esp)
	mov 16(%edx), %edi
	mov 20(%edx), %ebp
	mov %edi, 16(%esp)
	mov %ebp, 20(%esp)
	mov 24(%edx), %edi
	mov 28(%edx), %ebp
	mov %edi, 24(%esp)
	mov %ebp, 28(%esp)
	mov 32(%edx), %edi
	mov 36(%edx), %ebp
	mov %edi, 32(%esp)
	mov %ebp, 36(%esp)
	mov 40(%edx), %edi
	mov 44(%edx), %ebp
	mov %edi, 40(%esp)
	mov %ebp, 44(%esp)
	mov 48(%edx), %edi
	mov 52(%edx), %ebp
	mov %edi, 48(%esp)
	mov %ebp, 52(%esp)
	mov 56(%edx), %edi
	mov 60(%edx), %ebp
	mov %edi, 56(%esp)
	mov %ebp, 60(%esp)
	mov 16(%eax), %edi
	mov 12(%eax), %edx
	mov 8(%eax), %ecx
	mov 4(%eax), %ebx
	mov (%eax), %eax
	pushl %edi
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
# left half
	movl %ecx, %ebp
# Subround 0
	xorl %edx, %ebp
	add 20(%esp), %eax
	xorl %ebx, %ebp
	roll $10, %ecx
	addl %ebp, %eax
	movl %ebx, %ebp
	roll $11, %eax
	addl %edi, %eax

# Subround 1
	xorl %ecx, %ebp
	add 24(%esp), %edi
	xorl %eax, %ebp
	roll $10, %ebx
	addl %ebp, %edi
	movl %eax, %ebp
	roll $14, %edi
	addl %edx, %edi

# Subround 2
	xorl %ebx, %ebp
	add 28(%esp), %edx
	xorl %edi, %ebp
	roll $10, %eax
	addl %ebp, %edx
	movl %edi, %ebp
	roll $15, %edx
	addl %ecx, %edx

# Subround 3
	xorl %eax, %ebp
	add 32(%esp), %ecx
	xorl %edx, %ebp
	roll $10, %edi
	addl %ebp, %ecx
	movl %edx, %ebp
	roll $12, %ecx
	addl %ebx, %ecx

# Subround 4
	xorl %edi, %ebp
	add 36(%esp), %ebx
	xorl %ecx, %ebp
	roll $10, %edx
	addl %ebp, %ebx
	movl %ecx, %ebp
	roll $5, %ebx
	addl %eax, %ebx

# Subround 5
	xorl %edx, %ebp
	add 40(%esp), %eax
	xorl %ebx, %ebp
	roll $10, %ecx
	addl %ebp, %eax
	movl %ebx, %ebp
	roll $8, %eax
	addl %edi, %eax

# Subround 6
	xorl %ecx, %ebp
	add 44(%esp), %edi
	xorl %eax, %ebp
	roll $10, %ebx
	addl %ebp, %edi
	movl %eax, %ebp
	roll $7, %edi
	addl %edx, %edi

# Subround 7
	xorl %ebx, %ebp
	add 48(%esp), %edx
	xorl %edi, %ebp
	roll $10, %eax
	addl %ebp, %edx
	movl %edi, %ebp
	roll $9, %edx
	addl %ecx, %edx

# Subround 8
	xorl %eax, %ebp
	add 52(%esp), %ecx
	xorl %edx, %ebp
	roll $10, %edi
	addl %ebp, %ecx
	movl %edx, %ebp
	roll $11, %ecx
	addl %ebx, %ecx

# Subround 9
	xorl %edi, %ebp
	add 56(%esp), %ebx
	xorl %ecx, %ebp
	roll $10, %edx
	addl %ebp, %ebx
	movl %ecx, %ebp
	roll $13, %ebx
	addl %eax, %ebx

# Subround 10
	xorl %edx, %ebp
	add 60(%esp), %eax
	xorl %ebx, %ebp
	roll $10, %ecx
	addl %ebp, %eax
	movl %ebx, %ebp
	roll $14, %eax
	addl %edi, %eax

# Subround 11
	xorl %ecx, %ebp
	add 64(%esp), %edi
	xorl %eax, %ebp
	roll $10, %ebx
	addl %ebp, %edi
	movl %eax, %ebp
	roll $15, %edi
	addl %edx, %edi

# Subround 12
	xorl %ebx, %ebp
	add 68(%esp), %edx
	xorl %edi, %ebp
	roll $10, %eax
	addl %ebp, %edx
	movl %edi, %ebp
	roll $6, %edx
	addl %ecx, %edx

# Subround 13
	xorl %eax, %ebp
	add 72(%esp), %ecx
	xorl %edx, %ebp
	roll $10, %edi
	addl %ebp, %ecx
	movl %edx, %ebp
	roll $7, %ecx
	addl %ebx, %ecx

# Subround 14
	xorl %edi, %ebp
	add 76(%esp), %ebx
	xorl %ecx, %ebp
	roll $10, %edx
	addl %ebp, %ebx
	movl %ecx, %ebp
	roll $9, %ebx
	addl %eax, %ebx

# Subround 15
	xorl %edx, %ebp
	add 80(%esp), %eax
	xorl %ebx, %ebp
	roll $10, %ecx
	addl %ebp, %eax
	movl %ebx, %ebp
	roll $8, %eax
	addl %edi, %eax

# Subround 16
	xorl %ecx, %ebp
	andl %eax, %ebp
	mov 48(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 1518500249(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $7, %edi
	addl %edx, %edi

# Subround 17
	xorl %ebx, %ebp
	andl %edi, %ebp
	mov 36(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 1518500249(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $6, %edx
	addl %ecx, %edx

# Subround 18
	xorl %eax, %ebp
	andl %edx, %ebp
	mov 72(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 1518500249(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $8, %ecx
	addl %ebx, %ecx

# Subround 19
	xorl %edi, %ebp
	andl %ecx, %ebp
	mov 24(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 1518500249(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $13, %ebx
	addl %eax, %ebx

# Subround 20
	xorl %edx, %ebp
	andl %ebx, %ebp
	mov 60(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 1518500249(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $11, %eax
	addl %edi, %eax

# Subround 21
	xorl %ecx, %ebp
	andl %eax, %ebp
	mov 44(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 1518500249(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $9, %edi
	addl %edx, %edi

# Subround 22
	xorl %ebx, %ebp
	andl %edi, %ebp
	mov 80(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 1518500249(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $7, %edx
	addl %ecx, %edx

# Subround 23
	xorl %eax, %ebp
	andl %edx, %ebp
	mov 32(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 1518500249(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $15, %ecx
	addl %ebx, %ecx

# Subround 24
	xorl %edi, %ebp
	andl %ecx, %ebp
	mov 68(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 1518500249(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $7, %ebx
	addl %eax, %ebx

# Subround 25
	xorl %edx, %ebp
	andl %ebx, %ebp
	mov 20(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 1518500249(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $12, %eax
	addl %edi, %eax

# Subround 26
	xorl %ecx, %ebp
	andl %eax, %ebp
	mov 56(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 1518500249(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $15, %edi
	addl %edx, %edi

# Subround 27
	xorl %ebx, %ebp
	andl %edi, %ebp
	mov 40(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 1518500249(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $9, %edx
	addl %ecx, %edx

# Subround 28
	xorl %eax, %ebp
	andl %edx, %ebp
	mov 28(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 1518500249(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $11, %ecx
	addl %ebx, %ecx

# Subround 29
	xorl %edi, %ebp
	andl %ecx, %ebp
	mov 76(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 1518500249(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $7, %ebx
	addl %eax, %ebx

# Subround 30
	xorl %edx, %ebp
	andl %ebx, %ebp
	mov 64(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 1518500249(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $13, %eax
	addl %edi, %eax

# Subround 31
	xorl %ecx, %ebp
	andl %eax, %ebp
	mov 52(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 1518500249(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $12, %edi
	addl %edx, %edi

# Subround 32
	xorl $-1, %ebp
	orl %edi, %ebp
	mov 32(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 1859775393(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $11, %edx
	addl %ecx, %edx

# Subround 33
	xorl $-1, %ebp
	orl %edx, %ebp
	mov 60(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 1859775393(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $13, %ecx
	addl %ebx, %ecx

# Subround 34
	xorl $-1, %ebp
	orl %ecx, %ebp
	mov 76(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 1859775393(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $6, %ebx
	addl %eax, %ebx

# Subround 35
	xorl $-1, %ebp
	orl %ebx, %ebp
	mov 36(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 1859775393(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $7, %eax
	addl %edi, %eax

# Subround 36
	xorl $-1, %ebp
	orl %eax, %ebp
	mov 56(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 1859775393(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $14, %edi
	addl %edx, %edi

# Subround 37
	xorl $-1, %ebp
	orl %edi, %ebp
	mov 80(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 1859775393(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $9, %edx
	addl %ecx, %edx

# Subround 38
	xorl $-1, %ebp
	orl %edx, %ebp
	mov 52(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 1859775393(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $13, %ecx
	addl %ebx, %ecx

# Subround 39
	xorl $-1, %ebp
	orl %ecx, %ebp
	mov 24(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 1859775393(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $15, %ebx
	addl %eax, %ebx

# Subround 40
	xorl $-1, %ebp
	orl %ebx, %ebp
	mov 28(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 1859775393(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $14, %eax
	addl %edi, %eax

# Subround 41
	xorl $-1, %ebp
	orl %eax, %ebp
	mov 48(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 1859775393(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $8, %edi
	addl %edx, %edi

# Subround 42
	xorl $-1, %ebp
	orl %edi, %ebp
	mov 20(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 1859775393(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $13, %edx
	addl %ecx, %edx

# Subround 43
	xorl $-1, %ebp
	orl %edx, %ebp
	mov 44(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 1859775393(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $6, %ecx
	addl %ebx, %ecx

# Subround 44
	xorl $-1, %ebp
	orl %ecx, %ebp
	mov 72(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 1859775393(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $5, %ebx
	addl %eax, %ebx

# Subround 45
	xorl $-1, %ebp
	orl %ebx, %ebp
	mov 64(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 1859775393(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $12, %eax
	addl %edi, %eax

# Subround 46
	xorl $-1, %ebp
	orl %eax, %ebp
	mov 40(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 1859775393(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $7, %edi
	addl %edx, %edi

# Subround 47
	xorl $-1, %ebp
	orl %edi, %ebp
	mov 68(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 1859775393(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $5, %edx
	addl %ecx, %edx

# Subround 48
	xorl %edx, %ebp
	andl %eax, %ebp
	mov 24(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea -1894007588(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $11, %ecx
	addl %ebx, %ecx

# Subround 49
	xorl %ecx, %ebp
	andl %edi, %ebp
	mov 56(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea -1894007588(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $12, %ebx
	addl %eax, %ebx

# Subround 50
	xorl %ebx, %ebp
	andl %edx, %ebp
	mov 64(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea -1894007588(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $14, %eax
	addl %edi, %eax

# Subround 51
	xorl %eax, %ebp
	andl %ecx, %ebp
	mov 60(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea -1894007588(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $15, %edi
	addl %edx, %edi

# Subround 52
	xorl %edi, %ebp
	andl %ebx, %ebp
	mov 20(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea -1894007588(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $14, %edx
	addl %ecx, %edx

# Subround 53
	xorl %edx, %ebp
	andl %eax, %ebp
	mov 52(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea -1894007588(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $15, %ecx
	addl %ebx, %ecx

# Subround 54
	xorl %ecx, %ebp
	andl %edi, %ebp
	mov 68(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea -1894007588(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $9, %ebx
	addl %eax, %ebx

# Subround 55
	xorl %ebx, %ebp
	andl %edx, %ebp
	mov 36(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea -1894007588(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $8, %eax
	addl %edi, %eax

# Subround 56
	xorl %eax, %ebp
	andl %ecx, %ebp
	mov 72(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea -1894007588(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $9, %edi
	addl %edx, %edi

# Subround 57
	xorl %edi, %ebp
	andl %ebx, %ebp
	mov 32(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea -1894007588(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $14, %edx
	addl %ecx, %edx

# Subround 58
	xorl %edx, %ebp
	andl %eax, %ebp
	mov 48(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea -1894007588(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $5, %ecx
	addl %ebx, %ecx

# Subround 59
	xorl %ecx, %ebp
	andl %edi, %ebp
	mov 80(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea -1894007588(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $6, %ebx
	addl %eax, %ebx

# Subround 60
	xorl %ebx, %ebp
	andl %edx, %ebp
	mov 76(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea -1894007588(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $8, %eax
	addl %edi, %eax

# Subround 61
	xorl %eax, %ebp
	andl %ecx, %ebp
	mov 40(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea -1894007588(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $6, %edi
	addl %edx, %edi

# Subround 62
	xorl %edi, %ebp
	andl %ebx, %ebp
	mov 44(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea -1894007588(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $5, %edx
	addl %ecx, %edx

# Subround 63
	xorl %edx, %ebp
	andl %eax, %ebp
	mov 28(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea -1894007588(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $12, %ecx
	addl %ebx, %ecx

	movl %edi, %ebp
	nop
# Subround 64
	xorl $-1, %ebp
	orl %edx, %ebp
	mov 36(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea -1454113458(%ebx,%ebp,1), %ebx
	movl %edx, %ebp
	roll $9, %ebx
	addl %eax, %ebx

# Subround 65
	xorl $-1, %ebp
	orl %ecx, %ebp
	mov 20(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea -1454113458(%eax,%ebp,1), %eax
	movl %ecx, %ebp
	roll $15, %eax
	addl %edi, %eax

# Subround 66
	xorl $-1, %ebp
	orl %ebx, %ebp
	mov 40(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea -1454113458(%edi,%ebp,1), %edi
	movl %ebx, %ebp
	roll $5, %edi
	addl %edx, %edi

# Subround 67
	xorl $-1, %ebp
	orl %eax, %ebp
	mov 56(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea -1454113458(%edx,%ebp,1), %edx
	movl %eax, %ebp
	roll $11, %edx
	addl %ecx, %edx

# Subround 68
	xorl $-1, %ebp
	orl %edi, %ebp
	mov 48(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea -1454113458(%ecx,%ebp,1), %ecx
	movl %edi, %ebp
	roll $6, %ecx
	addl %ebx, %ecx

# Subround 69
	xorl $-1, %ebp
	orl %edx, %ebp
	mov 68(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea -1454113458(%ebx,%ebp,1), %ebx
	movl %edx, %ebp
	roll $8, %ebx
	addl %eax, %ebx

# Subround 70
	xorl $-1, %ebp
	orl %ecx, %ebp
	mov 28(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea -1454113458(%eax,%ebp,1), %eax
	movl %ecx, %ebp
	roll $13, %eax
	addl %edi, %eax

# Subround 71
	xorl $-1, %ebp
	orl %ebx, %ebp
	mov 60(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea -1454113458(%edi,%ebp,1), %edi
	movl %ebx, %ebp
	roll $12, %edi
	addl %edx, %edi

# Subround 72
	xorl $-1, %ebp
	orl %eax, %ebp
	mov 76(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea -1454113458(%edx,%ebp,1), %edx
	movl %eax, %ebp
	roll $5, %edx
	addl %ecx, %edx

# Subround 73
	xorl $-1, %ebp
	orl %edi, %ebp
	mov 24(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea -1454113458(%ecx,%ebp,1), %ecx
	movl %edi, %ebp
	roll $12, %ecx
	addl %ebx, %ecx

# Subround 74
	xorl $-1, %ebp
	orl %edx, %ebp
	mov 32(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea -1454113458(%ebx,%ebp,1), %ebx
	movl %edx, %ebp
	roll $13, %ebx
	addl %eax, %ebx

# Subround 75
	xorl $-1, %ebp
	orl %ecx, %ebp
	mov 52(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea -1454113458(%eax,%ebp,1), %eax
	movl %ecx, %ebp
	roll $14, %eax
	addl %edi, %eax

# Subround 76
	xorl $-1, %ebp
	orl %ebx, %ebp
	mov 64(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea -1454113458(%edi,%ebp,1), %edi
	movl %ebx, %ebp
	roll $11, %edi
	addl %edx, %edi

# Subround 77
	xorl $-1, %ebp
	orl %eax, %ebp
	mov 44(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea -1454113458(%edx,%ebp,1), %edx
	movl %eax, %ebp
	roll $8, %edx
	addl %ecx, %edx

# Subround 78
	xorl $-1, %ebp
	orl %edi, %ebp
	mov 80(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea -1454113458(%ecx,%ebp,1), %ecx
	movl %edi, %ebp
	roll $5, %ecx
	addl %ebx, %ecx

# Subround 79
	xorl $-1, %ebp
	orl %edx, %ebp
	mov 72(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea -1454113458(%ebx,%ebp,1), %ebx
	movl %edx, %ebp
	roll $6, %ebx
	addl %eax, %ebx

# save left result
	pushl %edi
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
# reloading chain variables
	mov 36(%esp), %edi
	mov 32(%esp), %edx
	mov 28(%esp), %ecx
	mov 24(%esp), %ebx
	mov 20(%esp), %eax
# right half
	movl %edx, %ebp
# Subround 0
	xorl $-1, %ebp
	orl %ecx, %ebp
	mov 60(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 1352829926(%eax,%ebp,1), %eax
	movl %ecx, %ebp
	roll $8, %eax
	addl %edi, %eax

# Subround 1
	xorl $-1, %ebp
	orl %ebx, %ebp
	mov 96(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 1352829926(%edi,%ebp,1), %edi
	movl %ebx, %ebp
	roll $9, %edi
	addl %edx, %edi

# Subround 2
	xorl $-1, %ebp
	orl %eax, %ebp
	mov 68(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 1352829926(%edx,%ebp,1), %edx
	movl %eax, %ebp
	roll $9, %edx
	addl %ecx, %edx

# Subround 3
	xorl $-1, %ebp
	orl %edi, %ebp
	mov 40(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 1352829926(%ecx,%ebp,1), %ecx
	movl %edi, %ebp
	roll $11, %ecx
	addl %ebx, %ecx

# Subround 4
	xorl $-1, %ebp
	orl %edx, %ebp
	mov 76(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 1352829926(%ebx,%ebp,1), %ebx
	movl %edx, %ebp
	roll $13, %ebx
	addl %eax, %ebx

# Subround 5
	xorl $-1, %ebp
	orl %ecx, %ebp
	mov 48(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 1352829926(%eax,%ebp,1), %eax
	movl %ecx, %ebp
	roll $15, %eax
	addl %edi, %eax

# Subround 6
	xorl $-1, %ebp
	orl %ebx, %ebp
	mov 84(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 1352829926(%edi,%ebp,1), %edi
	movl %ebx, %ebp
	roll $15, %edi
	addl %edx, %edi

# Subround 7
	xorl $-1, %ebp
	orl %eax, %ebp
	mov 56(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 1352829926(%edx,%ebp,1), %edx
	movl %eax, %ebp
	roll $5, %edx
	addl %ecx, %edx

# Subround 8
	xorl $-1, %ebp
	orl %edi, %ebp
	mov 92(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 1352829926(%ecx,%ebp,1), %ecx
	movl %edi, %ebp
	roll $7, %ecx
	addl %ebx, %ecx

# Subround 9
	xorl $-1, %ebp
	orl %edx, %ebp
	mov 64(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 1352829926(%ebx,%ebp,1), %ebx
	movl %edx, %ebp
	roll $7, %ebx
	addl %eax, %ebx

# Subround 10
	xorl $-1, %ebp
	orl %ecx, %ebp
	mov 100(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 1352829926(%eax,%ebp,1), %eax
	movl %ecx, %ebp
	roll $8, %eax
	addl %edi, %eax

# Subround 11
	xorl $-1, %ebp
	orl %ebx, %ebp
	mov 72(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 1352829926(%edi,%ebp,1), %edi
	movl %ebx, %ebp
	roll $11, %edi
	addl %edx, %edi

# Subround 12
	xorl $-1, %ebp
	orl %eax, %ebp
	mov 44(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 1352829926(%edx,%ebp,1), %edx
	movl %eax, %ebp
	roll $14, %edx
	addl %ecx, %edx

# Subround 13
	xorl $-1, %ebp
	orl %edi, %ebp
	mov 80(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 1352829926(%ecx,%ebp,1), %ecx
	movl %edi, %ebp
	roll $14, %ecx
	addl %ebx, %ecx

# Subround 14
	xorl $-1, %ebp
	orl %edx, %ebp
	mov 52(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 1352829926(%ebx,%ebp,1), %ebx
	movl %edx, %ebp
	roll $12, %ebx
	addl %eax, %ebx

# Subround 15
	xorl $-1, %ebp
	orl %ecx, %ebp
	mov 88(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 1352829926(%eax,%ebp,1), %eax
	movl %ecx, %ebp
	roll $6, %eax
	addl %edi, %eax

	movl %ebx, %ebp
	nop
# Subround 16
	xorl %eax, %ebp
	andl %ecx, %ebp
	mov 64(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 1548603684(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $9, %edi
	addl %edx, %edi

# Subround 17
	xorl %edi, %ebp
	andl %ebx, %ebp
	mov 84(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 1548603684(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $13, %edx
	addl %ecx, %edx

# Subround 18
	xorl %edx, %ebp
	andl %eax, %ebp
	mov 52(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 1548603684(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $15, %ecx
	addl %ebx, %ecx

# Subround 19
	xorl %ecx, %ebp
	andl %edi, %ebp
	mov 68(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 1548603684(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $7, %ebx
	addl %eax, %ebx

# Subround 20
	xorl %ebx, %ebp
	andl %edx, %ebp
	mov 40(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 1548603684(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $12, %eax
	addl %edi, %eax

# Subround 21
	xorl %eax, %ebp
	andl %ecx, %ebp
	mov 92(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 1548603684(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $8, %edi
	addl %edx, %edi

# Subround 22
	xorl %edi, %ebp
	andl %ebx, %ebp
	mov 60(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 1548603684(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $9, %edx
	addl %ecx, %edx

# Subround 23
	xorl %edx, %ebp
	andl %eax, %ebp
	mov 80(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 1548603684(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $11, %ecx
	addl %ebx, %ecx

# Subround 24
	xorl %ecx, %ebp
	andl %edi, %ebp
	mov 96(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 1548603684(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $7, %ebx
	addl %eax, %ebx

# Subround 25
	xorl %ebx, %ebp
	andl %edx, %ebp
	mov 100(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 1548603684(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $7, %eax
	addl %edi, %eax

# Subround 26
	xorl %eax, %ebp
	andl %ecx, %ebp
	mov 72(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 1548603684(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $12, %edi
	addl %edx, %edi

# Subround 27
	xorl %edi, %ebp
	andl %ebx, %ebp
	mov 88(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 1548603684(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $7, %edx
	addl %ecx, %edx

# Subround 28
	xorl %edx, %ebp
	andl %eax, %ebp
	mov 56(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 1548603684(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $6, %ecx
	addl %ebx, %ecx

# Subround 29
	xorl %ecx, %ebp
	andl %edi, %ebp
	mov 76(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 1548603684(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $15, %ebx
	addl %eax, %ebx

# Subround 30
	xorl %ebx, %ebp
	andl %edx, %ebp
	mov 44(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 1548603684(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $13, %eax
	addl %edi, %eax

# Subround 31
	xorl %eax, %ebp
	andl %ecx, %ebp
	mov 48(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 1548603684(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $11, %edi
	addl %edx, %edi

# Subround 32
	xorl $-1, %ebp
	orl %edi, %ebp
	mov 100(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 1836072691(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $9, %edx
	addl %ecx, %edx

# Subround 33
	xorl $-1, %ebp
	orl %edx, %ebp
	mov 60(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 1836072691(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $7, %ecx
	addl %ebx, %ecx

# Subround 34
	xorl $-1, %ebp
	orl %ecx, %ebp
	mov 44(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 1836072691(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $15, %ebx
	addl %eax, %ebx

# Subround 35
	xorl $-1, %ebp
	orl %ebx, %ebp
	mov 52(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 1836072691(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $11, %eax
	addl %edi, %eax

# Subround 36
	xorl $-1, %ebp
	orl %eax, %ebp
	mov 68(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 1836072691(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $8, %edi
	addl %edx, %edi

# Subround 37
	xorl $-1, %ebp
	orl %edi, %ebp
	mov 96(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 1836072691(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $6, %edx
	addl %ecx, %edx

# Subround 38
	xorl $-1, %ebp
	orl %edx, %ebp
	mov 64(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 1836072691(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $6, %ecx
	addl %ebx, %ecx

# Subround 39
	xorl $-1, %ebp
	orl %ecx, %ebp
	mov 76(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 1836072691(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $14, %ebx
	addl %eax, %ebx

# Subround 40
	xorl $-1, %ebp
	orl %ebx, %ebp
	mov 84(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 1836072691(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $12, %eax
	addl %edi, %eax

# Subround 41
	xorl $-1, %ebp
	orl %eax, %ebp
	mov 72(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 1836072691(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $13, %edi
	addl %edx, %edi

# Subround 42
	xorl $-1, %ebp
	orl %edi, %ebp
	mov 88(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 1836072691(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $5, %edx
	addl %ecx, %edx

# Subround 43
	xorl $-1, %ebp
	orl %edx, %ebp
	mov 48(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 1836072691(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $14, %ecx
	addl %ebx, %ecx

# Subround 44
	xorl $-1, %ebp
	orl %ecx, %ebp
	mov 80(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 1836072691(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $13, %ebx
	addl %eax, %ebx

# Subround 45
	xorl $-1, %ebp
	orl %ebx, %ebp
	mov 40(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 1836072691(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $13, %eax
	addl %edi, %eax

# Subround 46
	xorl $-1, %ebp
	orl %eax, %ebp
	mov 56(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 1836072691(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $7, %edi
	addl %edx, %edi

# Subround 47
	xorl $-1, %ebp
	orl %edi, %ebp
	mov 92(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 1836072691(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $5, %edx
	addl %ecx, %edx

# Subround 48
	xorl %eax, %ebp
	andl %edx, %ebp
	mov 72(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 2053994217(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $15, %ecx
	addl %ebx, %ecx

# Subround 49
	xorl %edi, %ebp
	andl %ecx, %ebp
	mov 64(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 2053994217(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $5, %ebx
	addl %eax, %ebx

# Subround 50
	xorl %edx, %ebp
	andl %ebx, %ebp
	mov 56(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 2053994217(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $8, %eax
	addl %edi, %eax

# Subround 51
	xorl %ecx, %ebp
	andl %eax, %ebp
	mov 44(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 2053994217(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $11, %edi
	addl %edx, %edi

# Subround 52
	xorl %ebx, %ebp
	andl %edi, %ebp
	mov 52(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 2053994217(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $14, %edx
	addl %ecx, %edx

# Subround 53
	xorl %eax, %ebp
	andl %edx, %ebp
	mov 84(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 2053994217(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $14, %ecx
	addl %ebx, %ecx

# Subround 54
	xorl %edi, %ebp
	andl %ecx, %ebp
	mov 100(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 2053994217(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $6, %ebx
	addl %eax, %ebx

# Subround 55
	xorl %edx, %ebp
	andl %ebx, %ebp
	mov 40(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 2053994217(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $14, %eax
	addl %edi, %eax

# Subround 56
	xorl %ecx, %ebp
	andl %eax, %ebp
	mov 60(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 2053994217(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $6, %edi
	addl %edx, %edi

# Subround 57
	xorl %ebx, %ebp
	andl %edi, %ebp
	mov 88(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 2053994217(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $9, %edx
	addl %ecx, %edx

# Subround 58
	xorl %eax, %ebp
	andl %edx, %ebp
	mov 48(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 2053994217(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $12, %ecx
	addl %ebx, %ecx

# Subround 59
	xorl %edi, %ebp
	andl %ecx, %ebp
	mov 92(%esp), %esi
	xorl %edi, %ebp
	addl %esi, %ebx
	roll $10, %edx
	lea 2053994217(%ebx,%ebp,1), %ebx
	movl %ecx, %ebp
	roll $9, %ebx
	addl %eax, %ebx

# Subround 60
	xorl %edx, %ebp
	andl %ebx, %ebp
	mov 76(%esp), %esi
	xorl %edx, %ebp
	addl %esi, %eax
	roll $10, %ecx
	lea 2053994217(%eax,%ebp,1), %eax
	movl %ebx, %ebp
	roll $12, %eax
	addl %edi, %eax

# Subround 61
	xorl %ecx, %ebp
	andl %eax, %ebp
	mov 68(%esp), %esi
	xorl %ecx, %ebp
	addl %esi, %edi
	roll $10, %ebx
	lea 2053994217(%edi,%ebp,1), %edi
	movl %eax, %ebp
	roll $5, %edi
	addl %edx, %edi

# Subround 62
	xorl %ebx, %ebp
	andl %edi, %ebp
	mov 80(%esp), %esi
	xorl %ebx, %ebp
	addl %esi, %edx
	roll $10, %eax
	lea 2053994217(%edx,%ebp,1), %edx
	movl %edi, %ebp
	roll $15, %edx
	addl %ecx, %edx

# Subround 63
	xorl %eax, %ebp
	andl %edx, %ebp
	mov 96(%esp), %esi
	xorl %eax, %ebp
	addl %esi, %ecx
	roll $10, %edi
	lea 2053994217(%ecx,%ebp,1), %ecx
	movl %edx, %ebp
	roll $8, %ecx
	addl %ebx, %ecx

# Subround 64
	xorl %edi, %ebp
	add 88(%esp), %ebx
	xorl %ecx, %ebp
	roll $10, %edx
	addl %ebp, %ebx
	movl %ecx, %ebp
	roll $8, %ebx
	addl %eax, %ebx

# Subround 65
	xorl %edx, %ebp
	add 100(%esp), %eax
	xorl %ebx, %ebp
	roll $10, %ecx
	addl %ebp, %eax
	movl %ebx, %ebp
	roll $5, %eax
	addl %edi, %eax

# Subround 66
	xorl %ecx, %ebp
	add 80(%esp), %edi
	xorl %eax, %ebp
	roll $10, %ebx
	addl %ebp, %edi
	movl %eax, %ebp
	roll $12, %edi
	addl %edx, %edi

# Subround 67
	xorl %ebx, %ebp
	add 56(%esp), %edx
	xorl %edi, %ebp
	roll $10, %eax
	addl %ebp, %edx
	movl %edi, %ebp
	roll $9, %edx
	addl %ecx, %edx

# Subround 68
	xorl %eax, %ebp
	add 44(%esp), %ecx
	xorl %edx, %ebp
	roll $10, %edi
	addl %ebp, %ecx
	movl %edx, %ebp
	roll $12, %ecx
	addl %ebx, %ecx

# Subround 69
	xorl %edi, %ebp
	add 60(%esp), %ebx
	xorl %ecx, %ebp
	roll $10, %edx
	addl %ebp, %ebx
	movl %ecx, %ebp
	roll $5, %ebx
	addl %eax, %ebx

# Subround 70
	xorl %edx, %ebp
	add 72(%esp), %eax
	xorl %ebx, %ebp
	roll $10, %ecx
	addl %ebp, %eax
	movl %ebx, %ebp
	roll $14, %eax
	addl %edi, %eax

# Subround 71
	xorl %ecx, %ebp
	add 68(%esp), %edi
	xorl %eax, %ebp
	roll $10, %ebx
	addl %ebp, %edi
	movl %eax, %ebp
	roll $6, %edi
	addl %edx, %edi

# Subround 72
	xorl %ebx, %ebp
	add 64(%esp), %edx
	xorl %edi, %ebp
	roll $10, %eax
	addl %ebp, %edx
	movl %edi, %ebp
	roll $8, %edx
	addl %ecx, %edx

# Subround 73
	xorl %eax, %ebp
	add 48(%esp), %ecx
	xorl %edx, %ebp
	roll $10, %edi
	addl %ebp, %ecx
	movl %edx, %ebp
	roll $13, %ecx
	addl %ebx, %ecx

# Subround 74
	xorl %edi, %ebp
	add 92(%esp), %ebx
	xorl %ecx, %ebp
	roll $10, %edx
	addl %ebp, %ebx
	movl %ecx, %ebp
	roll $6, %ebx
	addl %eax, %ebx

# Subround 75
	xorl %edx, %ebp
	add 96(%esp), %eax
	xorl %ebx, %ebp
	roll $10, %ecx
	addl %ebp, %eax
	movl %ebx, %ebp
	roll $5, %eax
	addl %edi, %eax

# Subround 76
	xorl %ecx, %ebp
	add 40(%esp), %edi
	xorl %eax, %ebp
	roll $10, %ebx
	addl %ebp, %edi
	movl %eax, %ebp
	roll $15, %edi
	addl %edx, %edi

# Subround 77
	xorl %ebx, %ebp
	add 52(%esp), %edx
	xorl %edi, %ebp
	roll $10, %eax
	addl %ebp, %edx
	movl %edi, %ebp
	roll $13, %edx
	addl %ecx, %edx

# Subround 78
	xorl %eax, %ebp
	add 76(%esp), %ecx
	xorl %edx, %ebp
	roll $10, %edi
	addl %ebp, %ecx
	movl %edx, %ebp
	roll $11, %ecx
	addl %ebx, %ecx

# Subround 79
	xorl %edi, %ebp
	add 84(%esp), %ebx
	xorl %ecx, %ebp
	roll $10, %edx
	addl %ebp, %ebx
	movl %ecx, %ebp
	roll $11, %ebx
	addl %eax, %ebx

# combine
	pushl %ecx
	mov 12(%esp), %esi
	mov 20(%esp), %ecx
	addl %eax, %ecx
	movl %esi, %eax
	mov 28(%esp), %esi
	mov 36(%esp), %ebp
	addl %esi, %eax
	addl %ebp, %ecx
	addl %edx, %eax
	mov 4(%esp), %ebp
	movl %ebx, %edx
	mov 16(%esp), %esi
	movl %edi, %ebx
	addl %ebp, %edx
	addl %esi, %ebx
	mov 32(%esp), %ebp
	addl %ebp, %ebx
	mov 40(%esp), %ebp
	addl %ebp, %edx
	mov (%esp), %edi
	add 8(%esp), %edi
	mov 24(%esp), %ebp
	addl %ebp, %edi
	addl $44, %esp
	mov 84(%esp), %esi
	addl $64, %esp
	mov %eax, (%esi)
	mov %ebx, 4(%esi)
	mov %ecx, 8(%esi)
	mov %edx, 12(%esi)
	mov %edi, 16(%esi)

	popl %ebx
	popl %edi
	popl %esi
	popl %ebp

	ret
