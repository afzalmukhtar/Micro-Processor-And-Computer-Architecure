@Find 1s compliment of a number

.text
	mov r0, #0b0001010101
	mvn r1, r0
	SWI 0x011
.end