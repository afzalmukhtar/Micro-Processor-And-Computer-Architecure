@Compare the value of R0 and R1, add if R0 = R1, else subtract
.text
	mov r0, #10
	mov r1, #15
	cmp r0, r1
	beq L1
	sub r3, r1, r0; store the difference in r3
	b L2
	L1: add r2, r1, r0 ; store the sum in r2
	L2: SWI 0x011
.end

    
