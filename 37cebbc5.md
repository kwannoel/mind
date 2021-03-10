---
date: 2021-03-07T14:18
tags: 
  - stub
---

# Static memory management (naive)

For every `name` binding, we assign a fixed memory location.

Hence we have natural constraints:

- Size of each data structure must be known at compile-time.
  For instance, arrays whose size depends on function parameters are not possible.
  
- Recursive functions are not possible, each recursive call needs its own copy of parameters and local variables.

- Data structures such as closures cannot be created dynamically.

We also have advantages:

- Speed

- Safety

  Programs cannot run out of space at run-time.
