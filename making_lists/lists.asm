.global _start
_start:
    @ direct addressing. load the ADDRESS of the first element of the list onto R0
    LDR R0,=list

    @ same applies here, but with another_list and R1
    LDR R1,=another_list

    @indirect addressing. load the VALUE at the ADDRESS of R0 ONTO R2
    LDR R2,[R0]

    @ same applies here, but with R1 and R3
    LDR R3,[R1]

    @ indirect addressing. load the VALUE at the ADRESS of R0,#4 (i + 1, where i is the index/address at r0 and 1 is the offset)
    @ takes the value at R0, adds 4 to it, then gets the value at that address
    LDR R4,[R0,#4]

    @ pre increment and post increment

    @ pre-increment. increments the ADDRESS at R1, then goes to the VALUE at that ADDRESS 
    LDR R5,[R1,#4]!

    @ post-increment. go to the VALUE at the address of R0, then INCREMENT the address of R1
    LDR R6,[R0],#4


.data
@ create a list of words (word = data 32 bits in size)
list:
    .word 2, 4, 6, 8, -6, -4, -2
another_list:
    .word 1, 3, 5, 7, -1, -3, -5