	ldr	r0, =4
	str	r0, [r13, #0]

	ldr	r0, =5
	str	r0, [r13, #4]

	ldr	r0, =9
	str	r0, [r13, #8]

	ldr	r0, =7
	str	r0, [r13, #12]

	ldr	r1, [r13, #8]
	ldr	r2, [r13, #12]
	bl	mult
	str	r0, [r13, #8]

	ldr	r1, [r13, #4]
	ldr	r2, [r13, #8]
	sub	r0, r1, r2
	str	r0, [r13, #4]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #4]
	add	r0, r1, r2
	str	r0, [r13, #0]

	ldr	r0, =-15
	str	r0, [r13, #16]

	ldr	r0, =8
	str	r0, [r13, #20]

	ldr	r0, =4
	str	r0, [r13, #24]

	ldr	r1, [r13, #20]
	ldr	r2, [r13, #24]
	bl	mult
	str	r0, [r13, #20]

	ldr	r1, [r13, #16]
	ldr	r2, [r13, #20]
	sub	r0, r1, r2
	str	r0, [r13, #16]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #16]
	add	r0, r1, r2
	str	r0, [r13, #0]

	ldr	r0, =1
	str	r0, [r13, #28]

	ldr	r0, =3
	str	r0, [r13, #32]

	ldr	r1, [r13, #28]
	ldr	r2, [r13, #32]
	sub	r0, r1, r2
	str	r0, [r13, #28]

	ldr	r0, =5
	str	r0, [r13, #36]

	ldr	r1, [r13, #28]
	ldr	r2, [r13, #36]
	sub	r0, r1, r2
	str	r0, [r13, #28]

	ldr	r0, =2
	str	r0, [r13, #40]

	ldr	r1, [r13, #28]
	ldr	r2, [r13, #40]
	sub	r0, r1, r2
	str	r0, [r13, #28]

	ldr	r0, =5
	str	r0, [r13, #44]

	ldr	r1, [r13, #28]
	ldr	r2, [r13, #44]
	sub	r0, r1, r2
	str	r0, [r13, #28]

	ldr	r0, =7
	str	r0, [r13, #48]

	ldr	r1, [r13, #28]
	ldr	r2, [r13, #48]
	sub	r0, r1, r2
	str	r0, [r13, #28]

	ldr	r0, =3
	str	r0, [r13, #52]

	ldr	r1, [r13, #28]
	ldr	r2, [r13, #52]
	sub	r0, r1, r2
	str	r0, [r13, #28]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #28]
	add	r0, r1, r2
	str	r0, [r13, #0]

	ldr	r0, =3
	str	r0, [r13, #56]

	ldr	r0, =5
	str	r0, [r13, #60]

	ldr	r1, [r13, #56]
	ldr	r2, [r13, #60]
	sub	r0, r1, r2
	str	r0, [r13, #56]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #56]
	add	r0, r1, r2
	str	r0, [r13, #0]

	ldr	r0, =9
	str	r0, [r13, #64]

	ldr	r0, =3
	str	r0, [r13, #68]

	ldr	r1, [r13, #64]
	ldr	r2, [r13, #68]
	bl	mult
	str	r0, [r13, #64]

	ldr	r0, =3
	str	r0, [r13, #72]

	ldr	r1, [r13, #64]
	ldr	r2, [r13, #72]
	sub	r0, r1, r2
	str	r0, [r13, #64]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #64]
	add	r0, r1, r2
	str	r0, [r13, #0]

	ldr	r0, =3
	str	r0, [r13, #76]

	ldr	r0, =1
	str	r0, [r13, #80]

	ldr	r1, [r13, #76]
	ldr	r2, [r13, #80]
	bl	mult
	str	r0, [r13, #76]

	ldr	r0, =0
	str	r0, [r13, #84]

	ldr	r1, [r13, #76]
	ldr	r2, [r13, #84]
	sub	r0, r1, r2
	str	r0, [r13, #76]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #76]
	add	r0, r1, r2
	str	r0, [r13, #0]

	ldr	r0, =0
	str	r0, [r13, #88]

	ldr	r0, =3
	str	r0, [r13, #92]

	ldr	r1, [r13, #88]
	ldr	r2, [r13, #92]
	bl	mult
	str	r0, [r13, #88]

	ldr	r0, =6
	str	r0, [r13, #96]

	ldr	r1, [r13, #88]
	ldr	r2, [r13, #96]
	bl	mult
	str	r0, [r13, #88]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #88]
	add	r0, r1, r2
	str	r0, [r13, #0]

	ldr	r0, =0
	str	r0, [r13, #100]

	ldr	r0, =0
	str	r0, [r13, #104]

	ldr	r1, [r13, #100]
	ldr	r2, [r13, #104]
	bl	mult
	str	r0, [r13, #100]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #100]
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

