---
date: 2021-07-30T17:49
tags: 
  - stub
---

# partially synchronous Byzantine fault Tolerance (BFT) consensus protocols

## Analogy

Suppose we have a group of Byzantine generals who need to decide only whether to attack or retreat.
Some may prefer to attack, while others prefer to retreat.
The important thing is that all generals must agree on a common decision.
A halfhearted attack would lead a rout, which would be worse than a coordinated attack / retreat.

The problem is that some generals may not only cast a vote for suboptimal strategy,
but may do so **selectively**.

For instance, suppose if nine generals are voting,
where four are for attacking,
four are for retreating.
The last general can send attack to the first four,
and send retreat to the rest.

Further complicating the situation,
the generals are physically separated,
relying on messengers who may fail to deliver votes,
or even forge false votes.

## Resolution

BFT can be achieved if loyal generals have a majority agreement on strategy.
Missing messages can be given a default vote.
If missing messages are in majority, pre-assigned default strategy can be used,
e.g. retreat.

## Uses

<4932ce0c>
<b376658c>

## Reference

https://en.wikipedia.org/wiki/Byzantine_fault

## Further readings

https://medium.com/@AFDudley/byzantine-fault-tolerant-consensus-papers-1b4b47d27463
https://medium.com/aleph-zero-foundation/recycling-the-agreement-distributed-consensus-on-dags-b415e4ebc6d
https://vitalik.ca/general/2018/08/07/99_fault_tolerant.html
