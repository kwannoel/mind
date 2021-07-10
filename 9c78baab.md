---
date: 2021-07-08T18:57
tags: 
  - stub
---

# Why left pad or right pad for ethereum types?

Left pad null bytes for numbers, big endian encoded.
(May include null bytes, we do not want to null terminate).

Right pad null bytes for strings/bytes, big endian encoded.
(Null termination)
