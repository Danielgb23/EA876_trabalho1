	ldr	r0, =2
	str	r0, [r13, #0]

	ldr	r0, =3
	str	r0, [r13, #4]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #4]
	bl	mult
	str	r0, [r13, #0]

	ldr	r0, =23
	str	r0, [r13, #8]

	ldr	r0, =4
	str	r0, [r13, #12]

	ldr	r1, [r13, #8]
	ldr	r2, [r13, #12]
	bl	mult
	str	r0, [r13, #8]

	ldr	r0, =2
	str	r0, [r13, #16]

	ldr	r0, =4
	str	r0, [r13, #20]

	ldr	r0, =2
	str	r0, [r13, #24]

	ldr	r0, =1
	str	r0, [r13, #28]

	ldr	r1, [r13, #24]
	ldr	r2, [r13, #28]
	sub	r0, r1, r2
	str	r0, [r13, #24]

	ldr	r1, [r13, #20]
	ldr	r2, [r13, #24]
	add	r0, r1, r2
	str	r0, [r13, #20]

	ldr	r1, [r13, #16]
	ldr	r2, [r13, #20]
	bl	mult
	str	r0, [r13, #16]

	ldr	r0, =3
	str	r0, [r13, #32]

	ldr	r1, [r13, #16]
	ldr	r2, [r13, #32]
	bl	mult
	str	r0, [r13, #16]

	ldr	r1, [r13, #8]
	ldr	r2, [r13, #16]
	add	r0, r1, r2
	str	r0, [r13, #8]

	ldr	r0, =1
	str	r0, [r13, #36]

	ldr	r1, [r13, #8]
	ldr	r2, [r13, #36]
	sub	r0, r1, r2
	str	r0, [r13, #8]

	ldr	r0, =2
	str	r0, [r13, #40]

	ldr	r0, =3
	str	r0, [r13, #44]

	ldr	r1, [r13, #40]
	ldr	r2, [r13, #44]
	bl	mult
	str	r0, [r13, #40]

	ldr	r0, =23
	str	r0, [r13, #48]

	ldr	r0, =4
	str	r0, [r13, #52]

	ldr	r1, [r13, #48]
	ldr	r2, [r13, #52]
	bl	mult
	str	r0, [r13, #48]

	ldr	r0, =2
	str	r0, [r13, #56]

	ldr	r0, =4
	str	r0, [r13, #60]

	ldr	r0, =2
	str	r0, [r13, #64]

	ldr	r0, =1
	str	r0, [r13, #68]

	ldr	r1, [r13, #64]
	ldr	r2, [r13, #68]
	sub	r0, r1, r2
	str	r0, [r13, #64]

	ldr	r1, [r13, #60]
	ldr	r2, [r13, #64]
	add	r0, r1, r2
	str	r0, [r13, #60]

	ldr	r1, [r13, #56]
	ldr	r2, [r13, #60]
	bl	mult
	str	r0, [r13, #56]

	ldr	r0, =3
	str	r0, [r13, #72]

	ldr	r1, [r13, #56]
	ldr	r2, [r13, #72]
	bl	mult
	str	r0, [r13, #56]

	ldr	r1, [r13, #48]
	ldr	r2, [r13, #56]
	add	r0, r1, r2
	str	r0, [r13, #48]

	ldr	r0, =1
	str	r0, [r13, #76]

	ldr	r1, [r13, #48]
	ldr	r2, [r13, #76]
	sub	r0, r1, r2
	str	r0, [r13, #48]

	ldr	r0, =2
	str	r0, [r13, #80]

	ldr	r0, =3
	str	r0, [r13, #84]

	ldr	r1, [r13, #80]
	ldr	r2, [r13, #84]
	sub	r0, r1, r2
	str	r0, [r13, #80]

	ldr	r1, [r13, #48]
	ldr	r2, [r13, #80]
	sub	r0, r1, r2
	str	r0, [r13, #48]

	ldr	r1, [r13, #40]
	ldr	r2, [r13, #48]
	add	r0, r1, r2
	str	r0, [r13, #40]

	ldr	r0, =4
	str	r0, [r13, #88]

	ldr	r0, =3
	str	r0, [r13, #92]

	ldr	r1, [r13, #88]
	ldr	r2, [r13, #92]
	bl	mult
	str	r0, [r13, #88]

	ldr	r1, [r13, #40]
	ldr	r2, [r13, #88]
	add	r0, r1, r2
	str	r0, [r13, #40]

	ldr	r1, [r13, #8]
	ldr	r2, [r13, #40]
	sub	r0, r1, r2
	str	r0, [r13, #8]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #8]
	add	r0, r1, r2
	str	r0, [r13, #0]

	ldr	r0, =4
	str	r0, [r13, #96]

	ldr	r0, =2
	str	r0, [r13, #100]

	ldr	r0, =3
	str	r0, [r13, #104]

	ldr	r1, [r13, #100]
	ldr	r2, [r13, #104]
	bl	mult
	str	r0, [r13, #100]

	ldr	r0, =23
	str	r0, [r13, #108]

	ldr	r0, =4
	str	r0, [r13, #112]

	ldr	r1, [r13, #108]
	ldr	r2, [r13, #112]
	bl	mult
	str	r0, [r13, #108]

	ldr	r0, =2
	str	r0, [r13, #116]

	ldr	r0, =2
	str	r0, [r13, #120]

	ldr	r0, =3
	str	r0, [r13, #124]

	ldr	r1, [r13, #120]
	ldr	r2, [r13, #124]
	bl	mult
	str	r0, [r13, #120]

	ldr	r0, =23
	str	r0, [r13, #128]

	ldr	r0, =4
	str	r0, [r13, #132]

	ldr	r1, [r13, #128]
	ldr	r2, [r13, #132]
	bl	mult
	str	r0, [r13, #128]

	ldr	r0, =2
	str	r0, [r13, #136]

	ldr	r0, =2
	str	r0, [r13, #140]

	ldr	r0, =3
	str	r0, [r13, #144]

	ldr	r1, [r13, #140]
	ldr	r2, [r13, #144]
	bl	mult
	str	r0, [r13, #140]

	ldr	r0, =23
	str	r0, [r13, #148]

	ldr	r0, =4
	str	r0, [r13, #152]

	ldr	r1, [r13, #148]
	ldr	r2, [r13, #152]
	bl	mult
	str	r0, [r13, #148]

	ldr	r0, =2
	str	r0, [r13, #156]

	ldr	r0, =4
	str	r0, [r13, #160]

	ldr	r0, =2
	str	r0, [r13, #164]

	ldr	r0, =1
	str	r0, [r13, #168]

	ldr	r1, [r13, #164]
	ldr	r2, [r13, #168]
	sub	r0, r1, r2
	str	r0, [r13, #164]

	ldr	r1, [r13, #160]
	ldr	r2, [r13, #164]
	add	r0, r1, r2
	str	r0, [r13, #160]

	ldr	r1, [r13, #156]
	ldr	r2, [r13, #160]
	bl	mult
	str	r0, [r13, #156]

	ldr	r0, =3
	str	r0, [r13, #172]

	ldr	r1, [r13, #156]
	ldr	r2, [r13, #172]
	bl	mult
	str	r0, [r13, #156]

	ldr	r1, [r13, #148]
	ldr	r2, [r13, #156]
	add	r0, r1, r2
	str	r0, [r13, #148]

	ldr	r0, =1
	str	r0, [r13, #176]

	ldr	r1, [r13, #148]
	ldr	r2, [r13, #176]
	sub	r0, r1, r2
	str	r0, [r13, #148]

	ldr	r0, =2
	str	r0, [r13, #180]

	ldr	r0, =3
	str	r0, [r13, #184]

	ldr	r1, [r13, #180]
	ldr	r2, [r13, #184]
	sub	r0, r1, r2
	str	r0, [r13, #180]

	ldr	r1, [r13, #148]
	ldr	r2, [r13, #180]
	sub	r0, r1, r2
	str	r0, [r13, #148]

	ldr	r1, [r13, #140]
	ldr	r2, [r13, #148]
	add	r0, r1, r2
	str	r0, [r13, #140]

	ldr	r0, =4
	str	r0, [r13, #188]

	ldr	r0, =3
	str	r0, [r13, #192]

	ldr	r1, [r13, #188]
	ldr	r2, [r13, #192]
	bl	mult
	str	r0, [r13, #188]

	ldr	r1, [r13, #140]
	ldr	r2, [r13, #188]
	add	r0, r1, r2
	str	r0, [r13, #140]

	ldr	r1, [r13, #136]
	ldr	r2, [r13, #140]
	bl	mult
	str	r0, [r13, #136]

	ldr	r0, =3
	str	r0, [r13, #196]

	ldr	r1, [r13, #136]
	ldr	r2, [r13, #196]
	bl	mult
	str	r0, [r13, #136]

	ldr	r1, [r13, #128]
	ldr	r2, [r13, #136]
	add	r0, r1, r2
	str	r0, [r13, #128]

	ldr	r0, =1
	str	r0, [r13, #200]

	ldr	r1, [r13, #128]
	ldr	r2, [r13, #200]
	sub	r0, r1, r2
	str	r0, [r13, #128]

	ldr	r0, =2
	str	r0, [r13, #204]

	ldr	r0, =3
	str	r0, [r13, #208]

	ldr	r1, [r13, #204]
	ldr	r2, [r13, #208]
	sub	r0, r1, r2
	str	r0, [r13, #204]

	ldr	r1, [r13, #128]
	ldr	r2, [r13, #204]
	sub	r0, r1, r2
	str	r0, [r13, #128]

	ldr	r1, [r13, #120]
	ldr	r2, [r13, #128]
	add	r0, r1, r2
	str	r0, [r13, #120]

	ldr	r0, =4
	str	r0, [r13, #212]

	ldr	r0, =3
	str	r0, [r13, #216]

	ldr	r1, [r13, #212]
	ldr	r2, [r13, #216]
	bl	mult
	str	r0, [r13, #212]

	ldr	r1, [r13, #120]
	ldr	r2, [r13, #212]
	add	r0, r1, r2
	str	r0, [r13, #120]

	ldr	r1, [r13, #116]
	ldr	r2, [r13, #120]
	bl	mult
	str	r0, [r13, #116]

	ldr	r0, =3
	str	r0, [r13, #220]

	ldr	r1, [r13, #116]
	ldr	r2, [r13, #220]
	bl	mult
	str	r0, [r13, #116]

	ldr	r1, [r13, #108]
	ldr	r2, [r13, #116]
	add	r0, r1, r2
	str	r0, [r13, #108]

	ldr	r0, =1
	str	r0, [r13, #224]

	ldr	r1, [r13, #108]
	ldr	r2, [r13, #224]
	sub	r0, r1, r2
	str	r0, [r13, #108]

	ldr	r0, =2
	str	r0, [r13, #228]

	ldr	r0, =3
	str	r0, [r13, #232]

	ldr	r1, [r13, #228]
	ldr	r2, [r13, #232]
	sub	r0, r1, r2
	str	r0, [r13, #228]

	ldr	r1, [r13, #108]
	ldr	r2, [r13, #228]
	sub	r0, r1, r2
	str	r0, [r13, #108]

	ldr	r1, [r13, #100]
	ldr	r2, [r13, #108]
	add	r0, r1, r2
	str	r0, [r13, #100]

	ldr	r0, =4
	str	r0, [r13, #236]

	ldr	r0, =3
	str	r0, [r13, #240]

	ldr	r1, [r13, #236]
	ldr	r2, [r13, #240]
	bl	mult
	str	r0, [r13, #236]

	ldr	r1, [r13, #100]
	ldr	r2, [r13, #236]
	add	r0, r1, r2
	str	r0, [r13, #100]

	ldr	r1, [r13, #96]
	ldr	r2, [r13, #100]
	bl	mult
	str	r0, [r13, #96]

	ldr	r1, [r13, #0]
	ldr	r2, [r13, #96]
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


