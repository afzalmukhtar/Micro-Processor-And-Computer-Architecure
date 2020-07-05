@Add 5 numbers where values are present in registers
.text
	mov r0, #1
    mov r1, #2
	mov r2, #3
    mov r3, #4
	mov r4, #5
    add r5, r0, r1
    add r5, r5, r2
    add r5, r5, r3
    add r5, r5, r4
.end

    
