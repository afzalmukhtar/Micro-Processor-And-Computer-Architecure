@Add array of 10 numbers taking data from memory location 
@stored as byte data (use .byte to store the data instead of .word)

.data
	a: .byte 1, 2, 3, 4, 5, 6, 7, 8, 9, 0

.text
	ldr r0, =a
	mov r1, #10
	mov r3, #0
	L1:	ldrb r4, [r0], #1
		add r3, r3, r4
		subs r1, r1, #1
		cmp r1, #0
		beq close
		b L1
	close: SWI 0x011
.end
