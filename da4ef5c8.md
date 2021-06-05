---
date: 2021-05-17T20:38
tags: 
  - evm
  - ethereum
---

# What is REVERT and RETURN opcodes in EVM?

`RETURN` pops 2 values off the stack: `START` and `OFFSET`. This give us the memory slice to return.

`REVERT` opcode is almost the same as `RETURN` (as described above). However it also reverts the state of the EVM.

This means that the `stack`, `memory`, and `state variables` are reverted to what they were, before a transaction call was made.
