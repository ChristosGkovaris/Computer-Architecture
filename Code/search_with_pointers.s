.data
array:   .word 10, 3, -10, 234, 22, 5

.text

    la a0, array             # address of array
    li a1, 6                 # number of array elements
    li a2, 22                # the number to find
    add  s0, zero, zero

loop1:    
    beq  s0, a1, exit_not    # if pointer reaches the end of the array, exit
    lw   t1, 0(a0)           # load *a0 (value at pointer a0)
    beq  t1, a2, exit_found  # if value equals the number, exit
    addi s0, s0, 1           # increment index
    addi a0, a0, 4           # move pointer to the next element
    j    loop1               # repeat the loop

exit_not:
    addi  s0, zero, -1       # return -1 if not found

exit_found:
    add   a0, s0, zero       # move result to a0
    
    addi  a7, zero, 10
    ecall