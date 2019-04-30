int0	dcd 42
int1	dcd 42
	ldr	r3, =int0
	ldr	r1, [r3]
	ldr	r2, =int1
	ldr	r2, [r2]
	bl	mult
	str	r0, [r3]

int2	dcd 42
int3	dcd 42
int4	dcd 12
	ldr	r3, =int3
	ldr	r1, [r3]
	ldr	r2, =int4
	ldr	r2, [r2]
	bl	mult
	str	r0, [r3]

int5	dcd 8
	ldr	r3, =int3
	ldr	r1, [r3]
	ldr	r2, =int5
	ldr	r2, [r2]
	add	r0, r1, r2
	str	r0, [r3]

int6	dcd 7
	ldr	r3, =int3
	ldr	r1, [r3]
	ldr	r2, =int6
	ldr	r2, [r2]
	bl	mult
	str	r0, [r3]

int7	dcd 2
	ldr	r3, =int3
	ldr	r1, [r3]
	ldr	r2, =int7
	ldr	r2, [r2]
	add	r0, r1, r2
	str	r0, [r3]

int8	dcd 3
	ldr	r3, =int3
	ldr	r1, [r3]
	ldr	r2, =int8
	ldr	r2, [r2]
	add	r0, r1, r2
	str	r0, [r3]

	ldr	r3, =int2
	ldr	r1, [r3]
	ldr	r2, =int3
	ldr	r2, [r2]
	bl	mult
	str	r0, [r3]

int9	dcd 2
	ldr	r3, =int2
	ldr	r1, [r3]
	ldr	r2, =int9
	ldr	r2, [r2]
	bl	mult
	str	r0, [r3]

	ldr	r3, =int0
	ldr	r1, [r3]
	ldr	r2, =int2
	ldr	r2, [r2]
	add	r0, r1, r2
	str	r0, [r3]

end
mult
	mov	r0, #0
	mov	r4, #0		;r4 conta quantos numeros negativos ha
	cmp	r1, #0		;se r1 for negativo 
	sublt	r1, r1, #1	;inverte ele
	mvnlt	r1, r1
	addlt	r4, r4, #1
	cmp	r2, #0		;se r2 for negativo 
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


