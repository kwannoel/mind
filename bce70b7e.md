---
date: 2021-02-11T15:39
tags: 
  - stub
---

# Pipes

3 communcation channels:

stdin, stdout, stderr

We use `|` to pipe information of one process to another

We can think of pipe as an anonymous file that residese between 2 processes.

One process writes bytes to the pipe, the other reads.

<31ed8360>

<4d4b1bf6>

# Implement

```
#include <unistd.h>
int pipe( int fd[] ) // 0 for success, !0 for errors
fd is an array of file desc, fd[0] == reading end, fd[1] == writing end
```
