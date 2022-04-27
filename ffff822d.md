---
date: 2022-01-21T15:01
tags: 
  - os
  - shared memory
  - concurrency
  - caching
---

# Cache coherency

Happens when various processors access shared memory.

If they all READ, everything is fine.
However, suppose a processor writes to a memory address.
Other processors might have caches of data in that memory address, which become invalid.

This is known as Cache Coherency problem.

To resolve this we can rely on cache protocols,
for instance write-invalidate / write-update which
either invalidate the cache data of that memory address / update it to the correct value.

It also has implications:
- cache ping-pong, where multiple processors read and modify the same address.
- false sharing, where processors write to different addresses,
  but these addresses map to the same cache line in the respective processors.
  Hence even though access is exclusive, the cache gets updated needlessly.
