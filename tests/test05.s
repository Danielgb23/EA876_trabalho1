int0	dcd 9
int1	dcd 8
	ldr	r3, =int0
	ldr	r1, [r3]
	ldr	r2, =int1
	ldr	r2, [r2]
	add	r0, r1, r2
	str	r0, [r3]

int2	dcd 7
	ldr	r3, =int0
	ldr	r1, [r3]
	ldr	r2, =int2
	ldr	r2, [r2]
	add	r0, r1, r2
	str	r0, [r3]

int3	dcd 6
	ldr	r3, =int0
	ldr	r1, [r3]
	ldr	r2, =int3
	ldr	r2, [r2]
	add	r0, r1, r2
	str	r0, [r3]

int4	dcd 5
	ldr	r3, =int0
	ldr	r1, [r3]
	ldr	r2, =int4
	ldr	r2, [r2]
	add	r0, r1, r2
	str	r0, [r3]

int5	dcd 4
	ldr	r3, =int0
	ldr	r1, [r3]
	ldr	r2, =int5
	ldr	r2, [r2]
	add	r0, r1, r2
	str	r0, [r3]

int6	dcd 3
	ldr	r3, =int0
	ldr	r1, [r3]
	ldr	r2, =int6
	ldr	r2, [r2]
	add	r0, r1, r2
	str	r0, [r3]

int7	dcd 2
	ldr	r3, =int0
	ldr	r1, [r3]
	ldr	r2, =int7
	ldr	r2, [r2]
	add	r0, r1, r2
	str	r0, [r3]

int8	dcd 1
	ldr	r3, =int0
	ldr	r1, [r3]
	ldr	r2, =int8
	ldr	r2, [r2]
	add	r0, r1, r2
	str	r0, [r3]

end
