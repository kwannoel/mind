---
date: 2022-01-10T23:34
tags: 
  - stub
---

# What is the difference between concurrency and parallelism?

[[d1ab5193]] - Things happening within the overlapping time periods.

[[01dbfbdd]] - Things happening simultaneously.

## Example driven explanation

The parallelism is a subset of concurrency.

What is concurrent but not parallel?
- Suppose a program has 2 asynchronous code blocks, A and B.
  ```js
  async function a() {
    some_computation()
    network_io()
  }
  async function b() {
    some_computation()
    network_io()
  }

  // START
  const c = a() // A
  const d = b() // B
  // At this point both a and b are running concurrently
  join(c, d) // wait for both a, b to finish execution
  // END


  ```
  The language compiler compiles A and B into a representation which
  the language runtime understands,
  Suppose the language runtime is single threaded,
  this means it only either runs A or B, but not both at the same time,
  by some heuristic / rule.
  
  The A and B are still concurrent between START and END,
  since both make progress between START and END.
  
  Suppose the language runtime schedules A to go first.
  After running some_computation, there is an IO call in A.
  This could be a network device interaction for instance.
  Since A is now stuck, the runtime decides that B can continue execution,
  while A waits for a response from the network device.
  
  Throughout this process execution is sequential, hence it is not parallel, only concurrent.

## Specification driven explanation
