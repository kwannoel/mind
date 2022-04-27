---
date: 2021-09-01T09:00
tags: 
  - stub
---

# YSC4230 Lecture 4

## Why use IR?

- better code quality
- easier to encode (high-level) source language features
- **optimizations** - 90% of the work

  Can chain different IRs for different opts

- structured control flow
- Easier to retarget the compiler to new architecture

## What are aspects of IR?

- Abstract machine code: hides details of the target architecture
- Allows machine independent codegen and optimization

## What makes good IR?

Trying to establish middle ground between high and low levels

- Easy translation target from level above.
- Easy to translate to level below.
- Narrow interface
  - Fewer constructs -> simpler phases / optimizations
  
- E.g. Source language has "while" / "for" / "foreach" loops

    - compile these away
    - IR might have only "while" loops and sequencing
    - Translation eliminates "for" and "foreach"
    
    ```
    [for(pre; cond; post) {body}]
    = [pre; while(cond) {body;post}]
    ```

## How to implement an IR?

- Highlevel IR

  - AST + new node types for typechecking / disambiguation of syntax nodes
  - Typically preserves the high-level language constructs
  - Structured control flow, variable names, methods, functions.
  - Simplification
  - Highlevel opts
    - Inline small functions, reuse constants
  - Useful for semantic analyses like type checking
  
  - e.g. haskell's core

- Lowlevel IR

  - Machine dependent assembly code + extra pseudo instructions
  - pseudo instruction for interfacing with garbage collector / memory allocator
  - imulq instruction that doesn't restrict register usage
  - source structure of the program is lost.
    - Translation to assembly code is straightforward.
  - allows low-level optimizations based on target architecture.
    - register allocation, instruction selection, memory layout, etc...
      - graph colouring for regalloc

- Midlevel IR

  - Intermediate between AST and assembly.
  - Unstructured jumps, abstract registers, memory locations.
  - Convenient for translation to high-quality machine code.
    - All imm values are named to faciliate optiizations that minimize stack / register usage.
    
  - Triples: OP a b
    - Useful for instruction selection via X86 via "graph tiling"
  - Quads: a = b OP c
  - SSA: Variant of quadruples where each variable is assigned oncce
    - Dataflow analysis for optimization
    - LLVM: Industrial strength IR, based on SSA.
  - Stack based
  
## How to grow IR?

Let's start by introducing a new IR subset. Why? Many languages target it.

Let-based IR.

Eliminate nested expressions.

1. Expressions - simple arithmetic exprs / immutable global vars

Eliminate Nested Expressions
   
   a. Convert into a tree,
   b. Then flatten into a list ordered by evaluation order.
      - Do this by naming intermediate values.
      
      ```
      let tmp0 = ... in
      let tmp1 = ... in
      tmp1
      ```
     
2. Global mutable variables

    - global mutable variables
    - commands for update and sequencing

3. Local control flow

    - conditional comands & while loops
    - basic blocks
    
## LL Storage Model: Locals

- Local variables %uid (ocaml let vars)
- Global decl (e.g. string constants) @gid
  - Use stack space
- Abstract locations: references to (stack-allocated) storage created by the alloca instruction
- Heap allocated structures creted by ext calls e.g. malloc

- Local variables:
  - SSA
    - can reuse registers
  - defined by the instructions ofr the form %uid = ...
  - Value of uid remains unchanged throughout lifetime.
  - Analogous to "let %uid = e in ..." in OCaml
  
- Intended to be abstract version of machine reg.

Not 32-bit aligned:
```
struct Example {
  int x; 32
  char a; 4
  char b; 4
  int y; 32
}
```

## Questions

- indirect address
- releasing ans for HW1?
- How do you make the representation more compact
  - what is scilla doing to compact known vals
  - null delimiting?
- Cardinality for storing stack values?

