The 1st Great PdgnCo Programming Competition
--------------------------------------------

We're gonna have a little competition 'round these parts, and it may get bloody but dwai.

Da Goal
-------

Given a number, n, as an argument to your program, print the nth prime.


Submission
----------

In order to submit, you must create an issue on this repository with a link to your code. Your code must contain:
- Code (duh)
- A Makefile with at least 3 targets:
    - `install`, which sets up any dependencies for your project
    - `compile`, which does any necessary compilation for your project
    - `run`, which takes an argument, `n`, and runs your program with that as the first argument. This is what will be timed

Submissions due at 11:55 on Mar. 4.

Da Rulez
--------

1. No libraries outside of your language's standard library.
    a. If your language's standard library contains utilities for determining the primality of a number, those are prohibited as well
2. Programs that generate incorrect solutions will be disqualified.
3. Programs' scores are the amount of User time they take, as reported by the unix `time` utility. Lowest score wins.
4. Programs must do the computations during their own runtime
    1. No compile-time generation of answers
    2. No shelling out to a web service for answers
    3. No forking a daemon and querying that on subsequent runs
    4. No sticking answers in a file and looking there on the next run
    5. If you do something that the judges feel is cheating, your program can be disqualified.
