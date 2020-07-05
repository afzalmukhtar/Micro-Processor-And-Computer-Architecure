@Based on the value of the number in R0 :
@	Store 1 in R1 if R0 is zero
@	Store 2 in R1 if R0 is positive
@	Store 3 in R1 if R0 is negative

.text
	mov r0, #-1
	cmp r0, #0
	blt less
	bgt great
	mov r1, #1
	b close
	less:	mov r1, #3
		b close
	great:	mov r1, #2
	close: SWI 0x011
.end
