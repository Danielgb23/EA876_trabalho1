int0	dcd 1
int1	dcd 2
	ldr	r3, =int0
	ldr	r1, [r3]
	ldr	r2, =int1
	ldr	r2, [r2]
	add	r0, r1, r2
	str	r0, [r3]

end
