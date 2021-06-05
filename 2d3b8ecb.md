---
date: 2021-05-19T14:48
tags: 
  - currying
  - lisp
  - syntax
  - macros
---

# Currying in Scheme (cut operator)

```haskell
curry :: ((a, b) -> c) -> a -> b -> c
```

In scheme this is called `cut`. You can remember it as *curry upon this* / cut as in an operator section (indicated by the holes: `<>`).

By example:
```lisp
(cut cons (+ a 1) <>) 	is the same as 	(lambda (x2) (cons (+ a 1) x2))
```

*`<>` indicates a slot to be filled.*

As you can see above, `cons (+ a 1)` requires another argument to "cons to", "<>" serves as the placeholder in this slot.

Other examples:
```lisp
(cut list 1 <> 3 <> 5) 	is the same as 	(lambda (x2 x4) (list 1 x2 3 x4 5))
(cut list) 	is the same as 	(lambda () (list))
```

We also have variable length slots `(<...>)`, to hold a variable number of arguments.
```lisp
(cut list 1 <> 3 <...>) 	is the same as 	(lambda (x2 . xs) (apply list 1 x2 3 xs))
(cut <> a b) 	is the same as 	(lambda (f) (f a b))
```

## Implementation

```
(define-syntax cut
  (syntax-rules ()
    ((cut . slots-or-exprs)
     (srfi-26-internal-cut () () . slots-or-exprs))))
     
(define-syntax srfi-26-internal-cut
  (syntax-rules (<> <...>)

    ;; construct fixed- or variable-arity procedure:
    ;;   (begin proc) throws an error if proc is not an <expression>
    ((srfi-26-internal-cut (slot-name ...) (proc arg ...))
     (lambda (slot-name ...) ((begin proc) arg ...)))
    ((srfi-26-internal-cut (slot-name ...) (proc arg ...) <...>)
     (lambda (slot-name ... . rest-slot) (apply proc arg ... rest-slot)))

    ;; process one slot-or-expr
    ((srfi-26-internal-cut (slot-name ...)   (position ...)      <>  . se)
     (srfi-26-internal-cut (slot-name ... x) (position ... x)        . se))
    ((srfi-26-internal-cut (slot-name ...)   (position ...)      nse . se)
     (srfi-26-internal-cut (slot-name ...)   (position ... nse)      . se))))
```
