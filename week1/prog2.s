@Demonstrate logical operations
.text
	mov r0, #15
	mov r1, #10
	and r2, r0, r1
	orr r3, r0, r1
	eor r4, r0, r1
	bic r5, r0, r1 
	mvn r6, r0
.end
