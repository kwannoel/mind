---
date: 2020-11-29
tags: 
  - algorithm
  - algorithm analysis
  - WIP
---

# Seidels sub-cubic algorithm (INCOMPLETE)

Find all the shortest path distances of an adjacency matrix $A[1..n, 1..n]$, store in $D[1..n, 1..n]$.

Runtime: $O(V^{w} log V)$

$\omega < 2.373$ is the exponent in the complexity $O(n^{w})$ for matrix multiplication.

## Derivation

### Environment

$MatrixMultiply$: Computes standard product of 2 $n*n$ matrices in $O(n^{w})$ time, for some constant $2 \leq w \le 3$.

Let $G = (V, E)$, be an undirected, unweighted n-vertex graph.

We represent it using an adjacency matrix: $A[1..n, 1..n]$.

### Steps

1. If complete graph -> return the original adjacency matrix.

2. Otherwise compute l2 path matrix, A2 = A * A

3. To get all paths of length at most 2, $A2m[i][j] = A[i][j] = 1 \lor A2[i][j] > 0$.

4. Recurse on A2m

5. INCOMPLETE
