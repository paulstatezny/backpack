# Elm Training

Higher order functions: functions that take functions as arguments.
Tuples: Use the `fst` and `snd` functions to get the first and second items in a tuple. (Tuples typically )

Typically in Elm you have UpperCase filenames
"Elm Application" == "React Component"
`main` is a function
In Elm there's no null (also Haskell, etc) -- but there is the Maybe type
In Elm (as in all strict functional languages) a function has to always return the same type

## Elm HTML

All html element functions are functions that take 2 arguments:

1. **List** of HTML Attributes
1. **List** of Children

## Function bodies

Function bodies must be indented if put on a different line

## ADTs

Algebraic Data Types

```
type Msg
  = NoOp
  | OnUserClick
```

`Msg` is a type constructor ("type"). `NoOp` and `OnUserClick` are **data constructors** of type `Msg`. This is kind of like enums. But they take a payload.

## ML Languages

Elm is part of the family of ML languages. Along with Haskell and PureScript. You should program around **types**.
