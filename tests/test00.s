	ldr	r0, =1
	str	r0, [r13, #0]

	ldr	r0, =2
	str	r0, [r13, #4]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #4]
	add	r0, r1, r2
	str	r0, [r13, #0]

end
