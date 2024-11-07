.data
array:   .word 10, 3, -10, 234, 22, 5

.text

    la a0, array             # address of array
    li a1, 6                 # number of array elements
    li a2, 22                # the number to find
    add  s0, zero, zero

loop:    
    beq  s0, a1, exit_not    # if index equals number of elements, exit
    slli t0, s0, 2           # multiply index by 4 (word size)
    add  t0, t0, a0          # get the address of array[s0]
    lw   t1, 0(t0)           # load array[s0] into t1
    beq  t1, a2, exit_found  # if array[s0] equals the number, exit
    addi s0, s0, 1           # increment index
    j    loop                # repeat the loop

exit_not:
    addi s0, zero, -1        # return -1 if not found

exit_found:
    add  a0, s0, zero        # move result to a0
    
    addi a7, zero, 10
    ecall