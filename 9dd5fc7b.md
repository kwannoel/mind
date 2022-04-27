---
date: 2021-12-17T18:03
tags: 
  - avoum
  - Nervos
---

# AVOUM for Nervos FAQ

NOTE: These are my personal notes while implementing the AVOUM for Nervos PoC.
They may just be outright wrong in some parts.

- Q: Does the execution environment for the rebase script also have to continue
  the normal verification of the new transaction, within the same execution pass in the vm?

  A: No, it's done in a separate execution pass.

- Q: Are ecalls syscalls? executive calls, it seems to be so.

  A: Yes, this is just RISC-V convention to call them ecalls instead of syscalls.

- Q: What's the difference between TraceMachine vs ASMMachine?
  A: No idea what's the difference...

## TODO

- How is riscv relevant here? Where is it setup? Do they just implement a compatible interpreter in x64?
