@ Find the no. of zeros, positive, negative numbers in  a given array

ldr r0, =a
mov r1, #9
mov r3, #0
mov r4, #0
mov r5, #0
loop:
	ldr r2, [r0], #4
	cmp r2, #0
	beq zero
	bgt great
	blt less
check:
	sub r1, r1, #1
	cmp r1, #0
	swieq 0x11
	b loop
zero:
	add r4, r4, #1
	b check
great:
	add r5, r5, #1
	b check
less:
	add r3, r3, #1
	b check
.data
a:.word 20,30,0,40,50,0,-2,-4,-9