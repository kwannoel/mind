---
date: 2020-10-17
tags: 
  - stub
---

# MiniKanren conso

Rather straight forward..

`(cons a d) == p`

```elisp
(define conso
  (lambda (a d p)
      (== (cons a d) p)))
```
