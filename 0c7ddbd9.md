---
date: 2021-05-02T14:14
tags: 
  - stub
---

# How do we manage the memory of multiple processes?

We have multiple processes in memory. Overtime, new processes will emerge, and we will run out of memory.

When this happens, we should evict some memory to free up space. Even better, we can do so preemptively, and evict a process from memory when it is idle. 

The above is a simplification. We have to consider [[55d3d98f]] 

