## Module Either

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

#### `bind`

``` purescript
bind :: forall e a b. Either e a -> (a -> Either e b) -> Either e b
```

Try one computation, and then try another which depends on its result.


