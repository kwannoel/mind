---
date: 2021-08-18T13:04
tags: 
  - stub
---

# Stripe interview walkthrough

## What Stripe does

Fraud detection

API

2M+ businesses

99.9999% uptime in 2020

Used with deliveroo for managing payments

## Interviewers

APAC - Bank Payment Methods

APAC - Cards team

## Interview process

1. Application
2. HackerRank
3. 1x Technical Screen
4. 2x Technical interviews for interns
   3x Technical interviews for interns
5. Manager Chat
6. Offer

## HackerRank

60 minutes, submitted within 2 weeks.

Format: Provided tests and hidden tests

Focus:
- Code quality

## Technical Screen

45 minutes

Coding problem from scratch, work through programming exercise, explain thought process.

## Onsites

1. Programming Exercise

15mins setup, 45 mins interview

Create and tackle with a small program from scratch

2. Integration

60mins, using existing library and code to fulfill spec.

Can you help yourself & read documentation?

3. Bug Squash (New Grad Only)

Find & triage bug in large existing code base.

Can you fix it? 

## Manager Chat

30mins

Describe technically challenging project
technical contribution
cross functional
why work at Stripe?

## Sample Problem

## Common python libraries

datetime
collections

At Stripe, customers aare paid everyday except holiday.

Given list of holidays: [Date]
List of payouts and scheduled dates like: [{amount: Int, date: Date}]

1. Consider ALL cases:

- Duplicate payout dates
- Holidays accounted for
- Consecutive holidays
- Overflow end-of-month holiday payouts
```

2. Clarifying questions to ask

3. Approach

4. How would you ensure all special input cases are met?

5. What are some possible failure modes to avoid?

- avoid rolling ur own implementation, since these are complex to deal with. Use established ones e.g. `datetime`

If you need to use a library, you are free to google and integrate it on the spot.

## What is measured during interviews

1. Communication

    - Explaining your work
    - Responding to feedback

        E.g. telling you to check edge-cases, mark as TODO, let them know you want to get solution first.

    - Professional and Courteous

2. Scoping

    - Understand problem scope
    - Edge cases
    - Ask questions, state assumption
    - Break down the problem
    - Run the code incrementally and iteratively

3. Writing Code

    - Code abstraction & quality
    - solving the problem
      - ask if you need to validate types of values
    - know your language, your development environment, accept code practices


## Resources

CtCI
leetcode, hackerrank
mock interiews

rest api
how does http work
swe pattern
statistics
state machines
data structures
databases

## Interview questions

API

Parsing urls

Parsing datetime

JSON parsing for http requests

Given a list of hash maps, look up the min value

Hashmap interface

Collections library

Debugging open source codebase - Python
