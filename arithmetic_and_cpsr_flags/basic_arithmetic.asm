.global _start
    @ we can add (ADD), subtract (SUB) and multiply (MUL) numbers in ARM
    @ division isn't including and requires more steps to perform

    MOV R0,#2
    MOV R1,#5
    MOV R2,#8
    MOV R3,#10
    MOV R4,#2
    MOV R5,#2

    @ ADD, SUB, and MUL have 3 parameters, the destination (1) and the two operands (2 & 3)

    @ performing basic addition using ADD mnemonic
    @ roughly translates to: R6 = R0 + R1
    ADD R6,R0,R1 
    @ the value at R6 is 2 + 5 = 7 

    @ performing multiplication using MUL
    @ roughly translates to: R8 = R4 * R2
    MUL R8,R4,R2
    @ the value at R8 is 4

    @ performing basic subtraction using SUB command
    @ roughly translates to: R7 = R2 - R3
    SUB R7,R2,R3
    @ the result is a negative number, 10 - 8 = -2
    @ you run into a problem where you might not be able to determine if the value of that register is a really big number, or a negative number
    @ to combat this, negative numbers are stored differently than positive numbers
    @ this is where the CPSR register comes in (more of that in the next example)



_start: