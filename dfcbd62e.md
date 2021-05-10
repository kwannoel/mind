---
date: 2021-05-02T14:33
tags: 
  - stub
---

# buddy allocation

Basically split the partitions into chunks of 2^n.

Whenever we allocate memory, ensure it is of the minimal size, and split if possible.

Whenever we free memory, merge if possible, if there are adjacent buddy blocks.
