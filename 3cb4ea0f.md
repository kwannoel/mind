---
date: 2020-11-21
tags: 
  - stub
  - blog
---

# Pointers in Haskell

While reading through  [What a Jane Street software engineering interview is like](https://blog.janestreet.com/what-a-jane-street-dev-interview-is-like/), I came across the usage of a *doubly-linked list* (LL) data structure.

We were implementing memoization, using a HashMap. A memory leak could occur if the cache was unbound.

Hence we bound the cache, and use a <75aa390d>  policy.

Hence we need to maintain ordering. We want to do this in O(1) time.

We store a pointer to the start and end of the LL.

When looking up an element:

1. It exists in HashMap -> Splice out of LL, cons to LL.
2. Does not exist -> Max bound?
  If maxbound -> pop last elem of LL, cons new elem to LL.
  If not maxbound -> cons new elem to LL.
  
Each time we store to hashmap, also store a pointer to the position on LL.

## Problems

This involves mutation, is there a way we can implement this in a pure way, and get O(1) performance as well?
