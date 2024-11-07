.data
string1: 
          .string "This is a 0 string!"
string2: 
          .zero 100          # Allocate 100 bytes for the string destination

.text
    
    la   a0, string1         # Load address of source string (string1)
    la   a1, string2         # Load address of destination string (string2)
    j    loop                # Jump to the second version of the code

loop:
    lbu  t0, 0(a0)           # Load byte from a0 (source string)
    sb   t0, 0(a1)           # Store byte into a1 (destination string)
    addi a0, a0, 1           # Increment pointer a0
    addi a1, a1, 1           # Increment pointer a1
    bne  t0, zero, loop      # If byte is not zero, repeat the loop
    
exit:
    addi a7, zero, 10        # Prepare system call code for exit
    ecall                    # Make system call to exit