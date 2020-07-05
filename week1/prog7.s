@Find the factorial of a number
.text
	mov r0, #5
	mov r1, r0
	fact:	sub r0, r0, #1
		mul r2, r1, r0
		mov r1, r2
		cmp r0, #1
		bgt fact
	close: SWI 0x011

.end

    
