@Linear Search,Check whether the given number is present in array
@if found move it’s position to R7 
@else move -1 to R6 (If the number not found)

.data
	a: .word 10, 20, 30, 40, 50
	b: .word 1
.text
	ldr r0, =a
	ldr r1, =b
	ldr r1, [r1]
	mov r3, #5
	
	L1:	
        cmp r3, #0
		beq notFound
        ldr r2, [r0], #4		
		cmp r2, r1
		beq Found
		subs r3, r3, #1
		b L1
	Found: 
        sub r7, r3, #5
        b close
    notFound:
        mov r6, #-1
    close: SWI 0x11
