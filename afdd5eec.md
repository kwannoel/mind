---
date: 2021-02-24T17:02
tags: 
  - stub
---

# Blocked sort-based indexing (BSBI)

1. Accumulate records for each block
2. sort
3. create the posting lists
4. write to disk.
5. merge blocks into 1 sorted order.

```
def bsbi(docs)
  n = 0
  while not_proceessed(docs):
    n = n + 1
    block = parseNextBlock()
    bsbi_invert(block)
    write_block_to_disk(block, fn)
merge_blocks(f1, ..., fn, fmerged)
```
