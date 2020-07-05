@Find the factorial of a number stored in R0. 
@Store the value in R1
.text
	mov r0, #5
	mov r2, r0
	mov r1, r0
	fact:	sub r2, r2, #1
			mul r3, r1, r2
			mov r1, r3
			cmp r2, #1
			bne fact
	close: SWI 0x011

.end
