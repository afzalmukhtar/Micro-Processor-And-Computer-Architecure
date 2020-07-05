@Binary search
.data
	a: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
	b: .word 1

.text
	ldr r0, =a
	ldr r1, =b
	ldr r1, [r1]
	mov r2, #0
	mov r4, #10
	search:
			add r3, r2, r4
			mov r3, r3, lsr #1
			mov r5, r3, lsl #2
			add r5, r5, r0
			ldr r5, [r5]
			cmp r1, r5
			beq found
			bgt greater
			blt lesser
	greater:
			add r2, r3, #1
			b condition
	lesser:
			sub r4, r3, #1
			b condition
	condition:		
			cmp r2, r4
			blt search
			b not_found

	found:
			SWI 0x011

	not_found:
			mov r3, #-1
			SWI 0x011