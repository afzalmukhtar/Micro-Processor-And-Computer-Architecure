@ Add a series of 32 bit number using table address

ldr r0, =a
mov r1, #6
mov r2, #0
loop:
	ldr r3, [r0], #4
	add r2, r2, r3
	sub r1, r1, #1
	cmp r1, #0
	bne loop
swi 0x11

.data
a:.word 10, 20, 30, 40, 50, 60

.end