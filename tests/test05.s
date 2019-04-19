	mov	r0, #9
	str	r0, [r13, #0]

	mov	r0, #8
	str	r0, [r13, #4]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #4]
	add	r0, r1, r2
	str	r0, [r13, #0]

	mov	r0, #7
	str	r0, [r13, #8]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #8]
	add	r0, r1, r2
	str	r0, [r13, #0]

	mov	r0, #6
	str	r0, [r13, #12]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #12]
	add	r0, r1, r2
	str	r0, [r13, #0]

	mov	r0, #5
	str	r0, [r13, #16]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #16]
	add	r0, r1, r2
	str	r0, [r13, #0]

	mov	r0, #4
	str	r0, [r13, #20]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #20]
	add	r0, r1, r2
	str	r0, [r13, #0]

	mov	r0, #3
	str	r0, [r13, #24]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #24]
	add	r0, r1, r2
	str	r0, [r13, #0]

	mov	r0, #2
	str	r0, [r13, #28]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #28]
	add	r0, r1, r2
	str	r0, [r13, #0]

	mov	r0, #1
	str	r0, [r13, #32]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #32]
	add	r0, r1, r2
	str	r0, [r13, #0]

end
mult
	mov	r0, #0
mult_loop
	add	r0, r0, r1
	sub	r2, r2, #1
	cmp	r2, #0
	bne	mult_loop
	mov	pc, lr


