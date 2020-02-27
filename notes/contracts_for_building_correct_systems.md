# Constracts For Building Correct Systems

Chris Keathley

## Correctness

- The quality or state of being free from error.
- Correctness as a function of time.
- Change is *Growth* and *Breakage*.

> Breaking changes require coordination.
> Where does your productivity go to die? In coordination.

## Why Does Software Change

- Aesthetics (Refactoring) "[Breaking API change] Refactors are self-indulgent"
- Requirements (Tacitly expects no breaking changes)
- Technology

> We want to ensure that we didn't break the API while allowing for growth

## 3 Things

1. Contracts
2. Data Specification
3. Testing Strategies

### Contracts

```
Function: input -> function -> output
                     \-> side-effects
```

Making functions correct:

1. Pre-conditions (Invariants about input)
2. Post-conditions (Invariants about output)

```elixir
defmodule Foo do
  use ExContract

  # 😱 ^^^
```

^^^ This is slow! So... traditionally in Design By Contract you'd strip these out when deploying to prod

### Data Specification

```elixir
# Norm

def rgb, do: spec(is_integer() an (& 0 <= &1 and &1 <= 255))
def hex, do: spec(is_binary() and (&String.starts_with?(&1, "3")))
```

```elixir
iex> conform!(123, rgb())
123

iex> conform!(-01, rgb())
** (Norm.MatchError)
```

```elixir
user_schema = schema(%{
  user: schema(%{
    name: spec(is_binary()),
    age: spec(is_integer(), and &(&1 > 0))
  })
})

iex> conform!(%{user: %{name: ..., age: ..., gender: ...}})
%{user: %{name: ..., age: ...}}

# 😱 ^^^ Removes `gender` because not in schema
```

### Testing Strategies

```elixir
iex> gen(rgb()) |> Enum.take(5)
[164, 36, 92, 239, 3]
```
