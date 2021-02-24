---
date: 2021-02-24T13:31
tags: 
  - stub
---

# Why is it easier to reason about asymptotic complexity in strict vs lazy languages?

`strict` - We can infer locally from syntax:

Given the following 
```
f (g a) (h b)
```

We know the complexity this function takes is roughly equivalent to:

```
time (g a) + time (h b) + time (f ga hb)
```

Where `ga`, `hb` are normal forms.

In a lazy syntax, f can ignore `(g a)`, `(h b)`, just from looking at the application is insufficient.

e.g.
```
f :: a -> b -> Int
f _ _ = 0
```

In that case the runtime is not immediately apparent until we look at the declaration. We have to recurse through the entire chain from beginning to end, to know what is called.
