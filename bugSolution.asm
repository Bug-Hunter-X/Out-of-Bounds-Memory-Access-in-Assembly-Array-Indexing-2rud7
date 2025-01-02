section .data
array dd 1, 2, 3, 4, 5 ; Example array
arraySize equ $-array ; Calculate array size

section .text
  global _start

_start:
  mov esi, 2 ; Example index

  ; Check if index is within bounds
  cmp esi, arraySize
  jge out_of_bounds ; Jump if index is out of bounds

  mov ebx, array ; Load array base address
  mov eax, [ebx+esi*4] ; Access array element if in bounds
  ; ... process eax ...
  jmp exit

out_of_bounds:
  ; Handle out-of-bounds error (e.g., print error message and exit)
  ; ... error handling ...

exit:
  mov eax, 1 ; sys_exit
  xor ebx, ebx ; exit code 0
  int 0x80