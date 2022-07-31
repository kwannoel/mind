---
date: 2021-02-21T18:28
tags: 
  - stub
---

# What are threads?

traditional process has a single thread of control. 

**Only 1 instruction of the whole program is executing at any time.**

To optimize:

Add more threads of control to the same process.

Multiple parts of the programs execute at the same time conceptually.

<48534004>

## OS Threads / Kernel thread

They share: code, data, files, virtual memory (stack/heap).
They have separate: registers, callstack.

NOTE: Confusing part is stack. Other thread stacks are accessible, as threads lie in the same memory space.
If the semantics of the language allow you to directly access memory 
(e.g. using exploits in C to directly access memory locations),
you could actually access other memory stack space.

But in terms of explicit bounds the OS assigns to threads, each thread has their own callstack, which resides in the same virtual memory space.

## User Thread / Green threads

https://en.wikipedia.org/wiki/Green_threads

They are managed by userspace, this could be a library or the language runtime.



# Reference

<7a1faaeb>
