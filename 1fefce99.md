---
date: 2021-05-02T17:18
tags: 
  - stub
---

# optimize disjoint memory allocation

We realize that different parts might remain static (text, data) and remain dynamic (heap, stack), during process execution.

As such, we want to assign variable amounts of memory to these.

If we do so, again we are at risk of external fragmentation!

To save the day we use paging. We can assign each part a page table.
