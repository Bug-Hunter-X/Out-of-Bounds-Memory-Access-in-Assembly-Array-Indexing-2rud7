# Out-of-Bounds Memory Access in Assembly Array Indexing
This repository demonstrates an example of an out-of-bounds memory access error in assembly language.  The error occurs when calculating an array index that exceeds the allocated memory boundaries. This can lead to segmentation faults or other unpredictable behavior.

The `bug.asm` file contains the erroneous code. The `bugSolution.asm` file shows how to correct the issue by adding bounds checking before accessing memory.

## How to reproduce
1. Assemble and link the code in `bug.asm`. 
2. Run the resulting executable. It is likely to crash with a segmentation fault.
3. Repeat steps 1 and 2 with the corrected code in `bugSolution.asm`. The corrected version should execute without errors, highlighting the importance of bounds checking.

## Analysis
The `mov eax, [ebx+esi*4+0x10]` instruction calculates a memory address based on the values of ebx and esi.  If the result of this calculation exceeds the allocated memory region, the program will attempt to access memory that it is not permitted to access, resulting in a crash.

## Solution
The solution involves adding checks to ensure that the calculated memory address falls within the valid range. This often requires knowing the size of the array and checking whether the index is within the array bounds before performing the memory access.