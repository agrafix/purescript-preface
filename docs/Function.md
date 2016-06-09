## Module Function

#### `apply`

``` purescript
apply :: forall a b. (a -> b) -> a -> b
```

Apply a function to an argument.

#### `($)`

``` purescript
infixr 0 apply as $
```

#### `compose`

``` purescript
compose :: forall a b c. (b -> c) -> (a -> b) -> a -> c
```

Compose two functions, i.e. create a function which applies one function and then the other.

#### `(<<<)`

``` purescript
infixr 9 compose as <<<
```

#### `flip`

``` purescript
flip :: forall a b c. (a -> b -> c) -> b -> a -> c
```

Flip the order of the first two arguments of a function.

#### `const`

``` purescript
const :: forall a b. a -> b -> a
```

Create a function which returns its first argument and ignores its second.


