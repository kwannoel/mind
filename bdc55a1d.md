---
date: 2022-03-08T21:48
tags: 
  - stub
---

# Memory orders

<81ea56b9>

<47eba19f>

<0597b083>

## How they interact amongst themselves

- Synchronization only happens between same atomic objects.

## How they interact with each other

- Independent.

## Terminologies

- synchronizes-with:
  Writes synchronize with reads.
  W->R
  RMW->R

- happens-before:
  Some instruction happens before another.
  - A->B
  - Transitive.
    A -> B, B->C => A->C
