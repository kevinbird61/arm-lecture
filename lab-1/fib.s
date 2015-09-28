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
	push {r4, r5, lr}
	
	subs r4,r0,#0		@ update flags
	beq .Loop
	
	add r5,r1,#0		@ r5 = seq1
	
	sub r0,r4,#1		@ r0 = r4 - 1
	add r1,r5,r2		@ r1 = r5 + r2
	mov r2,r5		@ r2 = r5
	bl fibonacci
	
	pop {r4, r5, pc}		@EPILOG
	
	@ END CODE MODIFICATION

.Loop:
	sub r0,r2,#0
	pop {r4,r5,pc}
	
	
	.size fibonacci, .-fibonacci
	.end
