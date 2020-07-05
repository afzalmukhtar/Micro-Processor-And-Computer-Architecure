@Generate Fibonacci Series

.data
	fib: .word 0, 1
	n: .word 10	
	
.text
	ldr r0, =fib
	ldr r1, =n
	ldr r1, [r1]
	
	genFib:
			ldr r2, [r0], #4
			ldr r3, [r0]
			add r2, r2, r3
			add r3, r0, #4			
			str r2, [r3]
			subs r1, r1,#1
			cmp r1, #0
			bne genFib
	SWI 0x11
.end
