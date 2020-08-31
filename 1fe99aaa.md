---
date: 2020-08-12
tags: 
  - stub
---

# Extended proof from CLRS for master theorem

### Assumptions

1. n is an **exact power** of b > 1 (why does it have to be an exact power?)

### Lemma 1

Let $a \geq 1$ and $b \ge 1$ be constants.

Let $f(n)$ be a nonnegative function defined on *exact powers of b*.

Define T(n) on exact powers of b by the recurrence:

$$
T(n) = 
  \left\{
    \begin{array}{l}
      \Theta(1)  &if\ n = 1, \\
      aT(n/b) + f(n) &if\ n = b^i, ∀ i ∈ ℤ,
    \end{array}
  \right.
$$

Then:

$$
T(n) = \Theta(n^{log_{b}a}) + \sum_{j = 0}^{log_{b}{n - 1}} a^j f(n / b^j)
$$

Unfold the recursion tree:

$$\begin{split}
  T(n)
  &= f(n) &+ aT(n/b) \\
  &= f(n) &+ af(n/b) + a^2 T(n/b^2) \\
  &= f(n) &+ af(n/b) + a^2 f(n/b^2) + ...  \\
  &       &+ a^{log_{b}{n - 1}} f(n/b^{log_{b}{n - 1}}) + a^{log_{b}{n}} T(1) .
\end{split}$$

Consider:

$$\begin{split}
a^{log_{b}{n}} &= a^{ \frac{\log_{a}{n}}{\log_{a}{b}}} \\
               &= n^{1/log_{a}{b}} \\
               &= n ^ {log_{b}a}
\end{split}$$

Hence:

$$
T(n) = \Theta(n^{log_{b}{a}}) + \sum_{j = 0}^{\log_{b}{n - 1}} a ^ j f(n / b^ i)
$$
