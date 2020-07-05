@Check GCD of two numbers without LDR
.text
	mov r0, #10
	mov r1, #15
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
.end

    
