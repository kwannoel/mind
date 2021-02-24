---
date: 2021-02-23T23:31
tags: 
  - stub
---

# Bigram for wildcard queries

Enumerate all k-grams (sequence k chars)

Get 2-grams

I am Noel

```
$I I$ $a am m$ $N No oe el l$
```

Then we map these to a list of terms each:

```
$I -> Igloo -> Interesting -> ...
No -> Noob -> Nope
```

That way we can run a search like so:

```
Noe* = $N AND No AND oe
```

This is much faster.

However, we have to post-filter words which may be false matches:

e.g. Nooooooooooe
