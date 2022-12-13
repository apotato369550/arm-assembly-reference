.global _start

_start:
    @ move the value of 5 to the register R0
    MOV R0, #5

    @ moves the value of 1 to the register R7
    MOV R7, #1

    @ software interrupt - interrupts the software and lets the operating system take over
    SWI 0
