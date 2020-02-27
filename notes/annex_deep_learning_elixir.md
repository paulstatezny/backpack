# Annex - Deep Learning in Elixir

Jason Goldberger from Dockyard

## The Scenario

- You're a fish
- You want to eat shrimp
- You want to _not_ get eaten by sharks
- You can only choose to go up or down in the ocean
- Data you get: Depth of sharks (0 - 1) and whether sun is out (0 or 1)
- You have conversations with other fish.
  - They say a real scenario where they ate a shrimp
  - You guess what decision they made
  - They tell you whether your guess was right
- Goal: Eating shrimp

## Asking "Why"

- We can't answer _why_ with our neural network. We can only answer how to increase the probability that we'll eat shrimp.

## The Essence of Deep Neural Networks

- "Error": The amount that your guesses are wrong. (E.g. Off by 0.09)

## Annex doesn't use OTP

A lot of libraries do, and sometimes it's overengineering.

A data manipulation library, not an architecture library.

## Terms

### Shape

A list of integers that expresses the dimensionality and size of data.

```elixir
# A 3-dimensional tensor
[2, 3, 10]
```

### Feedforward

The prediction phase of neural network training. Given some inputs, it produces a guess output.

### Backpropagation

The learning phase of neural network training. Given some measure of error, adjust the weights of inputs to try to improve output.

### Error

How wrong your prediction was.

### Hyperparameter

A "tunable" fload that is the weight it gives to an input.

### Matrix

A list of lists of floats

### Tensor

A list of matrices

## What does Annex Do

Answer: Supervised Learning

(Labeled examples of expected conditions and expected outputs. *Learning by example.*)

## 3 Steps to Training a Neural Net

1. Feedforward
2. Backpropagation
3. ???????????
