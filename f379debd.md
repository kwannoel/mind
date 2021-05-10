---
date: 2021-04-11T22:19
tags: 
  - stub
---

# What is Real-Time Protocol (RTP)

Extension of UDP

- port no., ip addr
- payload type ident
- packet seq no.
- time-stamp

- Does not ensure timely data delivery / quality of service.
- RTP is implemented at end systems.
- routers do not make special effort to ensure RTP packets arrive at destination in order.

- RTP header
  - payload type - 7 bits
  - seq no. - 16 bits
  - time stamp - 32 bits
  - sync source id - 32 bits
  - misc fields
