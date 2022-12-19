.global _start
_start:
    MOV R0, #5
    MOV R1, #7
    MOV R2, #0xFFFFFFFF
    MOV R3, #1

    @ negative values are stored differently in registers
    @ sometimes, it's difficult to tell whether a number is a really large positive number or a really small negative number

    @ take these two examples here, the value at their registers are both equal to #0xFFFFFFFe
    @ #0xFFFFFFFe can be taken as a really large number & its hard to tell if what was stored is positive or negative

    @ both these operations result in the same answer, #0xFFFFFFFe
    SUB R4, R1, R0
    SUB R5, R2, R3
    @ the values in both registers are #0xFFFFFFFe, but when viewed more closely, R4 has the value of -2. why?

    @ cpsr flags allow us to identify if the resulting value in the register is postiive or negative
    @ after performing an operation, the value of the CPSR register changes and the letter 'N' is bolded

    @ there are special instruction that can be used when dealing w/ negative numbers namely: SUBS and ADDS
    @ these two operations change the value at the cpsr register and set the flags
    @ these operations should be used sparingly since they require additional computation power/steps if and only if:

    @ the values you are dealing with are negative
    @ you aren't sure of the sum or difference of the operation

    SUBS R6, R1, R0
    ADDS R7, R2, R3