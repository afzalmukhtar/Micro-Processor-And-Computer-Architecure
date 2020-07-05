@Copy String from one address to another

.data
	a: .asciz "Hello"
	b: .asciz ""

.text
	ldr r0, =a
	ldr r1, =b

	loop:
		ldrb r2, [r0], #1
		strb r2, [r1], #1
		cmp r2, #0
		beq close
		b loop
close: swi 0x011
.end
		
