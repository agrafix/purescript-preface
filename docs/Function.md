## Module Function

#### `apply`

``` purescript
apply :: forall a b. (a -> b) -> a -> b
```

Apply a function to an argument.

#### `($)`

``` purescript
($) :: forall a b. (a -> b) -> a -> b
```

_right-associative / precedence 0_

An infix operator for function application.

#### `compose`

``` purescript
compose :: forall a b c. (b -> c) -> (a -> b) -> a -> c
```

Compose two functions, i.e. create a function which applies one function and then the other.

#### `(<<<)`

``` purescript
(<<<) :: forall a b c. (b -> c) -> (a -> b) -> a -> c
```

_right-associative / precedence 9_

An infix operator for function composition.

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


