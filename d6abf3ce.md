---
date: 2021-08-13T23:02
tags: 
  - stub
---

# How is Plutus Compiled to Plutus Core?

High level:

```
GHC: Haskell -> GHC Core
Plutus Tx compiler: GHC Core -> Plutus IR
Plutus IR compiler: Plutus IR -> Typed Plutus Core -- Can we target this instead??
Type eraser: Typed Plutus Core -> Untyped Plutus Core
```

<200db23e>

https://iohk.io/en/blog/posts/2021/02/02/plutus-tx-compiling-haskell-into-plutus-core/

## In-depth

GHC Core is part of GHC compilation pipeline.
To intercept it, we need a GHC plug-in.
This gets run during the GHC compilation process,
and is able to access and modify the program that GHC is compiling.

We want to then retrieve it and place it back into the main Haskell program.

This is because the transactions we submit need to include these (plutus core) scripts.

Hence we can represent this as:

```haskell
compile :: forall a . a   -- expression we compile
        -> CompiledCode a -- plutus core output
```

### A catch: Compile is a function?! but it causes side-effects!

Compile is not actually a function but a *label*.

The GHC plugin we implement trawls through the program to find applications of `compile`,
and inlines the compiled code.

### Another catch: How do we deal with runtime depedencies?

Suppose we have a function, which has runtime values as input.
Since these runtime values need to be passed on-chain,
we need to compile them as well.

How can we apply these?

Well because of functional approach we can compile runtime values,
then pass them in.

Compile time we wrap these in `Typeable` which describes how we map haskell types to plutus core types.
We also have `Lift` which describes how to turn a Haskell value into a Plutus Core value.
