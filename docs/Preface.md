## Module Preface

The `Preface` is an alternative to the `Prelude`. It provides simpler types,
and is intended to be a more accessible standard library for beginners.

#### `Unit`

``` purescript
data Unit
```

#### `unit`

``` purescript
unit :: Unit
```

The only value of the `Unit` type.

#### `Maybe`

``` purescript
data Maybe a
  = Nothing
  | Just a
```

#### `getOrElse`

``` purescript
getOrElse :: forall a. a -> Maybe a -> a
```

Get the value from a `Maybe a`, if it is present, or using a default value, if not.

#### `Either`

``` purescript
data Either a b
  = Left a
  | Right b
```

#### `mapLeft`

``` purescript
mapLeft :: forall r a b. (a -> b) -> Either a r -> Either b r
```

Change values constructed using `Left` by applying a function. 

#### `mapRight`

``` purescript
mapRight :: forall l a b. (a -> b) -> Either l a -> Either l b
```

Change values constructed using `Right` by applying a function.

#### `map`

``` purescript
map :: forall a b. (a -> b) -> Array a -> Array b
```

#### `filter`

``` purescript
filter :: forall a. (a -> Boolean) -> Array a -> Array a
```

Create a new `Array` by keeping those elements of another `Array` for which the specified function
returns `true`.

#### `Task`

``` purescript
data Task :: * -> *
```

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


