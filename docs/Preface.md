## Module Preface

The `Preface` is an alternative to the `Prelude`. It provides simpler types,
and is intended to be a more accessible standard library for beginners.

#### `Unit`

``` purescript
data Unit
```

A type with only one value.

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

The `Maybe` type constructor is used to describe values which might be _missing_.
`Maybe` is an alternative to using `null` in other languages.

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

The `Either` type constructor is used to describe values which are constructed using values
from one of two types.
`Either` is sometimes used to express _values or errors_, with errors on the `Left` and successful results
on the `Right`.

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


