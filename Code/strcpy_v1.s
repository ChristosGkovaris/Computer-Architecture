.data
string1: 
          .string "This is a 0 string!"
string2: 
          .zero 100          # Allocate 100 bytes for the string destination

.text
    
    la   a0, string1         # Load address of source string (string1)
    la   a1, string2         # Load address of destination string (string2)
    j    loop1               # Skip to second version below. Remove to try the first version
    add  s0, zero, zero      # i = 0

loop:
    add  t0, a0, s0          # Get address of a0[i]
    lbu  t0, 0(t0)           # Load byte from a0[i] into t0
    add  t2, a1, s0          # Get address of a1[i]
    sb   t0, 0(t2)           # Store byte into a1[i]
    beq  t0, zero, exit      # If byte is zero, exit loop
    addi s0, s0, 1           # Increment i
    j    loop                # Repeat loop
    
exit:
    addi a7, zero, 10         # Prepare system call code for exit
    ecall                     # Make system call to exit