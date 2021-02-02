---
date: 2021-01-29T13:28
tags: 
  - stub
---

# process creation in unix

```
#include <unistd.h>

int fork();
```

Can call another program by using `exec`.

Can replace current process with a new one with `exec1`



## Example

```
init -- inetd
|______ login _____ bash
|______ klogd
...
```
