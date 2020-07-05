@Search for a character in a string
.data
	a: .asciz "Hello World"
	b: .asciz "z"

.text
	ldr r0, =a 
	ldr r1, =b 
	ldrb r1, [r1]
	mov r4, #-1 ; -1 if character not found
	loop:
		ldrb r3, [r0] 
		cmp r1, r3 
		beq found
		add r0, r0, #1 
		cmp r3, #0
		bne loop
		beq close
	found:
		mov r4, r0 ; store the address of where it is found
	close: SWI 0x011