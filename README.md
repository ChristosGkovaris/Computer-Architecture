# Computer Architecture 
Welcome to the "Computer Architecture", which demonstrates different techniques such as string copying, array searching, and recursive functions.


## Code Overview
**String Copying (version 1):** The first version of the string copying code demonstrates how to copy a null-terminated string byte-by-byte from one memory location to another. It uses basic load and store operations in a loop, checking for the null terminator (`0x00`) to exit.

**String Copying (version 2):** The second version is a simplified version of the first, where instead of calculating the address of each byte manually, it directly increments the pointers (`a0` and `a1`).

**Array Search (version 1):** This program searches for a specific number in an integer array. It iterates through the array, checking each element until the target number is found or the array is fully traversed. It returns the index if the value is found, or `-1` if the value is not found.

**Array Search (version 2):** This version of the array search does the same as the first one but uses a different approach to calculate the address of each element. Instead of directly indexing, it multiplies the index by 4 (the size of a word) to find the address of the current element.

**Factorial Calculation:** This program demonstrates recursion by calculating the factorial of a given number. It uses the `jal` instruction to call itself recursively and compute the factorial.


## Implementation Details
- This repository contains several assembly programs that demonstrate basic operations in RISC-V Assembly language.


## How to Run
- **Clone the Repository:**
  ```bash
     git clone https://github.com/yourusername/assembly-code-examples.git
     cd assembly-code-examples
- **Ensure you have an assembler and simulator that supports RISC-V assembly language**
