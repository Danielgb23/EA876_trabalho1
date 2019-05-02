	ldr	r0, =12
	str	r0, [r13, #0]

	ldr	r0, =123
	str	r0, [r13, #4]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #4]
	add	r0, r1, r2
	str	r0, [r13, #0]

	ldr	r0, =45
	str	r0, [r13, #8]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #8]
	add	r0, r1, r2
	str	r0, [r13, #0]

	ldr	r0, =135
	str	r0, [r13, #12]

	ldr	r0, =12
	str	r0, [r13, #16]

	ldr	r1, [r13, #12]
	ldr	r2, [r13, #16]
	bl	mult
	str	r0, [r13, #12]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #12]
	add	r0, r1, r2
	str	r0, [r13, #0]

	ldr	r0, =42
	str	r0, [r13, #20]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #20]
	add	r0, r1, r2
	str	r0, [r13, #0]

end
mult
	mov	r0, #0
	mov	r4, #0		;r4 conta quantos numeros negativos ha
	cmp	r1, #0		;se r1 for negativo 
	sublt	r1, r1, #1	;inverte ele
	mvnlt	r1, r1
	addlt	r4, r4, #1
	cmp	r2, #0		;se r2 for negativo 
	moveq	r0,#0	;Se for zera r0.
	moveq	pc, lr	;retorna sem realizar mult_loop
	sublt	r2, r2, #1	;inverte ele
	mvnlt	r2, r2
	addlt	r4, r4, #1
mult_loop
	add	r0, r0, r1
	sub	r2, r2, #1
	cmp	r2, #0
	bne	mult_loop
	cmp	r4, #1		;se apenas um dos operandos
	mvneq	r0, r0		;for negativo, nega o resultado
	addeq	r0, r0, #1
	mov	pc, lr


