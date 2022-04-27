---
date: 2022-01-21T15:06
tags: 
  - shared memory
  - os
---

# Memory consistency

Reference: https://www.cs.utexas.edu/~bornholt/post/memory-models.html

## Why is memory consistency necessary?

It is needed for programs to behave intuitively.

Given the following threads of execution for instance (initially A = 0, B = 0):
```
A = 1
print(B)
```

```
B = 1
print(A)
```

We should be able to conclude neither thread will print "00",
based on the order in which a program is executed. (although there can be multiple permutations).

In a distributed system, **we need invariants / constraints for the programmer**,
such that the system will guarantee memory will be consistent, provided they follow these.

In the example above, the model is known as sequential consistency.

Why don't we just rename memory consistency to sequential consistency then?

Well, sequential consistency is SLOW. There should be other memory models we can use,
such that we can reorder, transform instructions as required, but still
allow the original program to behave intuitively.

There are 2 types of constraints:
- order in which memory operations appear to execute.
- order in which memory operations performed by one thread become visible to other threads.

These constraints have to hold for DIFFERENT memory locations,
since there could be indirect relations between memory locations.

e.g.
```
if A then B
```

where A and B are in different locations, but B depends on the value of A.
