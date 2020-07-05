@Perform convolution using MLA

.data
	a: .word 10, 20, 30, 40
	b: .word 10, 20, 30, 40

.text
	ldr r0, =a
	ldr r1, =b
	mov r2, #4
	mov r5, #0
	Convol:
			ldr r3, [r0], #4
			ldr r4, [r1], #4
			mla r5, r3, r4, r5
			subs r2, r2, #1
			cmp r2, #0
			beq close
			b Convol
	close:	SWI 0x11
