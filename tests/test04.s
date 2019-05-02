	ldr	r0, =9
	str	r0, [r13, #0]

	ldr	r0, =8
	str	r0, [r13, #4]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #4]
	bl	mult
	str	r0, [r13, #0]

	ldr	r0, =7
	str	r0, [r13, #8]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #8]
	bl	mult
	str	r0, [r13, #0]

	ldr	r0, =6
	str	r0, [r13, #12]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #12]
	bl	mult
	str	r0, [r13, #0]

	ldr	r0, =5
	str	r0, [r13, #16]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #16]
	bl	mult
	str	r0, [r13, #0]

	ldr	r0, =4
	str	r0, [r13, #20]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #20]
	bl	mult
	str	r0, [r13, #0]

	ldr	r0, =3
	str	r0, [r13, #24]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #24]
	bl	mult
	str	r0, [r13, #0]

	ldr	r0, =2
	str	r0, [r13, #28]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #28]
	bl	mult
	str	r0, [r13, #0]

	ldr	r0, =1
	str	r0, [r13, #32]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #32]
	bl	mult
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


