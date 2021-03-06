# odin-recursion

This repo contains my solutions for the Odin Project Recursion assignments.

## Recursive Fibonacci
The first assignment was to first implement an iterative method which takes an integer as an input and returns an array containing the numbers in the Fibonacci sequence up to the place denoted by that integer.

I had a hard time making this in a concise way while sticking to one method, so I made a separate method #fib to determine the Fibonacci number of any given integer.

The second part of the assignment was to make a recursive implementation. My first implementation of this uses my helper method #fib, but I thought this was probably not what was intended by the assignment. Therefore, there is the second method #fibs_rec2, which does not need a helper function. 

I figured it out when I realized that I could use the length of the results array to combine the two base cases into one. This allows the use of the ternary operator rather than a multi-line conditional.

## Merge sort
The second assignment was to implement the merge sort algorithm. I had trouble with this because I tried passing a results variable through all the recursions like I had been doing for other recursive methods. It turned out that that wasn't really needed. This method has quite a few #puts calls which I used to help me visualize what it was doing. I left them in there because I ended up enjoying following it along.