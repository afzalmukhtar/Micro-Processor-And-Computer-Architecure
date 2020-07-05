@Find the GCD of given numbers loaded from memory

.text
	ldr r0, =a
	ldr r1, =b
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, r0
	mov r3, r1
	gcd:	cmp r2, r3
		beq close
		blt less
		subs r2, r2, r3
		B gcd
	less:	subs r3, r3, r2
		b gcd
	close:	SWI 0x011
.data
	a: .word 10
	b: .word 15
.end

