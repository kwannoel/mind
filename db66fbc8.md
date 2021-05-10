---
date: 2021-03-19T23:38
tags: 
  - os
  - systems
---

# Disjoint memory schemes

  This is similar to fixed partitions in a sense that there are discrete sizes (page frame sizes).
  
  However, not all of a process memory has to be contained in one. Instead, memory is "virtually contiguous", using "logical memory". Under the hood, this gets mapped to "page frames", which reside on physical memory.
  
## How is mapping done? 

<74060f2b>
  
Mapping is done with page tables and translation look-aside buffers (TLBs).

## How do we protect memory access between processes?

  A natural question is how we can ensure that a process does not accidentally overwrite a physical memory address which is in use.

 <ba20d21a> 

## Can we further <1fefce99> ?

  A processes' memory consumption is large. Context switching between processes will be costly.

  We make the observation that a processes' memory consumption can be segmented: text, data, heap, stack.
  
