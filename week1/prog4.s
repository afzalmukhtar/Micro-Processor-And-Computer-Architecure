@Check if a number is even or odd
.text
	mov r0, #5
	ands r1, r0, #1 ; r1 = 1 if odd else r1 = 0
	beq L1
	mov r2, #0xff
	b L2
	L1: mov r2, #0x00 ; r2 = 0 if even else r2 = 255
	L2: SWI 0x011
.end

    
