@Add two numbers loaded from memory and store the result in memory

.data
	a: .word 10
	b: .word 9
	c: .word 0

.text
	ldr r0, =a
	ldr r1, =b
	ldr r2, =c
	ldr r0, [r0]
	ldr r1, [r1]
	add r3, r0, r1
	str r3, [r2]
.end
