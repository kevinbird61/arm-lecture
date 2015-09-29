	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	@ r0~r3 => return value , passing parameter
	push {r4, r5, r6, lr}

	cmp r0,#0
	beq .L0

	cmp r0,#1
	beq .L1
	
	subs r4,r0,#0			@ r4 = n
	mov r5,#0			@ r5 = seq1(0)
	mov r6,#1			@ r6 = seq2(1)

.LoopIt:
	mov r0,r6			@ r0 => return value , result = seq2
	add r6,r5,r6			@ seq2 += seq1
	mov r5,r0			@ seq1 = result
	subs r4,r4,#1			@ n -= 1
	bne .LoopIt			@ if r4 != 0
	
	pop {r4, r5, r6, pc}		@EPILOG

.L0:
	mov r0,#0
	pop {r4, r5, r6, pc}		@EPILOG
.L1:
	mov r0,#1
	pop {r4, r5, r6, pc}		@EPILOG		

	@ END CODE MODIFICATION


	.size fibonacci, .-fibonacci
	.end
