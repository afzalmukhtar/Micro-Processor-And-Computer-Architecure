@To copy n numbers from Location A to Location B

.data
	a: .word 10, 20, 30, 40
	b: .word 0, 0, 0, 0
.text
	ldr r6, =b
	ldr r0, =a
	ldr r1, =b
	mov r3, #4
	L1:	ldr r4, [r0], #4
		str r4, [r1], #4
		subs r3, r3, #1
		bne L1
.end
