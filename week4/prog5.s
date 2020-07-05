@Write a function for MUL(add(a, b), c) => [(a+b)*c]

.text
	mov r0, #5 ; =a
	mov r1, #10; =b
	mov r2, #15; =c
	stmfd r13!, {r0-r2}
	bl mul_add
	ldmfd r13!, {r0}
	SWI 0x011

	mul_add:
		ldmfd r13!, {r3, r4, r5}
		add r3, r3, r4
		mul r4, r3, r5
		stmfd r13!, {r4}
		mov pc, lr
.end