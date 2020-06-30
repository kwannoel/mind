---
title: "Monads"
date: "2020-06-20"
tags:
    - Haskell
    - Monad
---

To start off, we have to understand that a Monad is not `state`, `impure`, `imperative sequencing` and so on. It can be used to model these, but it isn't defined as those things.

We can think of it as a pattern we observe.

In the context of Haskell, when a certain type we use obeys monadic laws, we can call it a monad. 

There are 3 laws a monad has to obey:

| Law            | definition `(>>=)`                         | definition `(>=>)`  | definition `join / j`    |
|----------------|--------------------------------------------|---------------------|--------------------------|
| left identity  | `return a >>= f = f a`                     | `return >=> g == g` | `join . return == id`    |
| right identity | `m >>= return = m`                         | `f >=> return == f` | `join . fmap pure == id` |
| associativity  | `(m >>= f) >>= g = m >>= (\x -> fx >>= g)` | `f >=> (g >=> h)`   | `j . fmap j = j . j`     |

A way to gain intuition if something is a monad is to gain intuition for these laws. 

Recognize if a type follows these laws.

Let's see some of the things that `Monads` allow us to do:

It allows us to wrap some value, `a` within a monadic context:

```hs
return :: a -> m a
```

It allows us to compose functions which return values wrapped in monadic contexts:

```hs
(>=>) :: (a -> m b) -> (b -> m c) -> (a -> m c)
```

It allows us to combine contexts.
```hs
join :: m (m a) -> m a
```

It allows us to apply a function `a -> m b` to a value, `a` within a context `m` and combine the contexts (one from `m a` one from `m b`).
```hs
(>>=) :: m a -> (a -> m b) -> m b
```

So where is this pattern useful?

Some examples:
- <2af0d82f> (To write values)
- <8a11e368> (To read values)
- <370e62ed> (I can do both!)

References:
[[https://bartoszmilewski.com/2016/11/21/monads-programmers-definition/]]
[[https://wiki.haskell.org/Monad_laws]]
[[http://dev.stephendiehl.com/hask/#eightfold-path-to-monad-satori]]
