@ Scan a 32 bit number to find its negative 

ldr r0,=0x1234abc
mvn r1, r0
add r1, r1, #1
swi 0x11