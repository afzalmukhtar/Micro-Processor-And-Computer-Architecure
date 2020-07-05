@Perform convolution using MUL 

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
			mul r6, r3, r4
			add r5, r5, r6
			subs r2, r2, #1
			cmp r2, #0
			bne Convol
	SWI 0x11
