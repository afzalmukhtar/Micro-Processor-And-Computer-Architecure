@c[k] = a[i] * b[j]

.data
	a: .word 10, 20, 30, 40, 50
	b: .word 10, 20, 30, 40, 50
	c: .word 0

.text
	ldr r0, =a
	ldr r1, =b
	ldr r2, =c
	mov r6, #5
	loop:
		cmp r6, #0
		beq close
		sub r6, r6, #1
		ldr r3, [r0], #4
		ldr r4, [r1], #4
		mul r5, r3, r4
		str r5, [r2], #4
		b loop

	close: SWI 0x011