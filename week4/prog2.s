@Find smallest number in an array

.data 
	a: .word 1, 2, 3, 4, 5, 6
.text
	ldr r0, =a
	mov r1, #5
	ldr r2, [r0], #4
	loop:
		cmp r1, #0
		beq close
		subs r1, r1, #1
		ldr r3, [r0], #4
		cmp r3, r2
		blt less	
		b loop
		
	less:
		mov r2, r3
		b loop
	close: swi 0x011
.end
