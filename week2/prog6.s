@Add an array of numbers from memory

.data
	a: .word 10, 20, 30, 40, 50
.text
	ldr r0, =a
	mov r1, #5
	mov r3, #0
	L1:	ldr r2, [r0], #4
		add r3, r3, r2
		subs r1, r1, #1
		cmp r1, #0
		beq close
		b L1		
	close: SWI 0x011
.end
