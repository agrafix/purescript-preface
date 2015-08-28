## Module Task

#### `Task`

``` purescript
data Task :: * -> *
```

A `Task` represents a computation which can have side-effects.

#### `pure`

``` purescript
pure :: forall a. a -> Task a
```

Create a `Task` which returns a value with no side-effects.

#### `bind`

``` purescript
bind :: forall a b. Task a -> (a -> Task b) -> Task b
```

Create a `Task` which combines two `Task`s, passing the result of the first to a function,
which determines the second.

#### `log`

``` purescript
log :: String -> Task Unit
```

Create a `Task` which logs a `String` to the console.

