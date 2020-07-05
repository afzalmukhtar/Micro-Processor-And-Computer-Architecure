@Find factorial using subroutine

.text

	mov r0, #5
	mov r1, r0
	mov r2, #1
	bl fact
	b close
	fact:
		stmfd r13!, {r1,r2, lr}
		cmp r0, #1
		beq return
		mov r1, r0
		sub r0, r0, #1
		bl fact
		mul r2, r1, r0
		mov r0, r2
		ldmfd r13!, {r1, r2, lr}
		mov pc, lr
	return:
		mov r0, #1
		ldmfd r13!, {r1, r2, lr}
		mov pc, lr
	close: SWI 0x011
.end
