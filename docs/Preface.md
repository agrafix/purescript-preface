## Module Preface

The `Preface` is an alternative to the `Prelude` which can be used for teaching purposes.

See the individual modules' documentation for details:

- [`Array`](Array.md)          - Functions on arrays: maps, folds, etc.
- [`Boolean`](Boolean.md)      - Basic boolean algebra.
- [`Either`](Either.md)        - A simple example of an _algebraic data type_.
- [`Function`](Function.md)    - Constructions on functions - composition, application, etc.
- [`Maybe`](Maybe.md)          - A data structure which may or may not contain a value.
- [`Number`](Number.md)        - Functions and operators on numbers.
- [`String`](String.md)        - Functions and operators on strings.
- [`Task`](Task.md)            - A simple model for code with side-effects.


### Re-exported from Array:

#### `map`

``` purescript
map :: forall a b. (a -> b) -> Array a -> Array b
```

Create a new `Array` by applying a function to the elements of another `Array`.

#### `fold`

``` purescript
fold :: forall a acc. (acc -> a -> acc) -> acc -> Array a -> acc
```

"Fold" the elements of the array, using a function to combine each element with the current accumulator.

#### `filter`

``` purescript
filter :: forall a. (a -> Boolean) -> Array a -> Array a
```

Create a new `Array` by keeping those elements of another `Array` for which the specified function
returns `true`.

#### `concat`

``` purescript
concat :: forall a. Array a -> Array a -> Array a
```

Concatenate the elements of two arrays

### Re-exported from Boolean:

#### `or`

``` purescript
or :: Boolean -> Boolean -> Boolean
```

Boolean OR.

#### `not`

``` purescript
not :: Boolean -> Boolean
```

Boolean negation.

#### `and`

``` purescript
and :: Boolean -> Boolean -> Boolean
```

Boolean AND.

#### `(||)`

``` purescript
infixr 2 or as ||
```

#### `(&&)`

``` purescript
infixr 3 and as &&
```

### Re-exported from Either:

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

#### `mapRight`

``` purescript
mapRight :: forall l a b. (a -> b) -> Either l a -> Either l b
```

Change values constructed using `Right` by applying a function.

#### `mapLeft`

``` purescript
mapLeft :: forall r a b. (a -> b) -> Either a r -> Either b r
```

Change values constructed using `Left` by applying a function.

### Re-exported from Function:

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

#### `compose`

``` purescript
compose :: forall a b c. (b -> c) -> (a -> b) -> a -> c
```

Compose two functions, i.e. create a function which applies one function and then the other.

#### `apply`

``` purescript
apply :: forall a b. (a -> b) -> a -> b
```

Apply a function to an argument.

#### `(<<<)`

``` purescript
infixr 9 compose as <<<
```

#### `($)`

``` purescript
infixr 0 apply as $
```

### Re-exported from Maybe:

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

### Re-exported from Number:

#### `subtract`

``` purescript
subtract :: Number -> Number -> Number
```

Subtract a `Number` from another.

#### `remainder`

``` purescript
remainder :: Number -> Number -> Number
```

Find the remainder after division

#### `multiply`

``` purescript
multiply :: Number -> Number -> Number
```

Multiply two `Number`s.

#### `min`

``` purescript
min :: Number -> Number -> Number
```

Find the minimum of two numbers.

#### `max`

``` purescript
max :: Number -> Number -> Number
```

Find the maximum of two numbers.

#### `lte`

``` purescript
lte :: Number -> Number -> Boolean
```

Test whether one value is less than or equal to another.

#### `lt`

``` purescript
lt :: Number -> Number -> Boolean
```

Test whether one value is less than another.

#### `gte`

``` purescript
gte :: Number -> Number -> Boolean
```

Test whether one value is greater than or equal to another.

#### `gt`

``` purescript
gt :: Number -> Number -> Boolean
```

Test whether one value is greater than another.

#### `divide`

``` purescript
divide :: Number -> Number -> Number
```

Divide a `Number` by another.

#### `add`

``` purescript
add :: Number -> Number -> Number
```

Add two `Number`s.

#### `(>=)`

``` purescript
infixl 4 gte as >=
```

#### `(>)`

``` purescript
infixl 4 lte as >
```

#### `(<=)`

``` purescript
infixl 4 gt as <=
```

#### `(<)`

``` purescript
infixl 4 lt as <
```

#### `(/)`

``` purescript
infixl 7 divide as /
```

#### `(-)`

``` purescript
infixl 6 subtract as -
```

#### `(+)`

``` purescript
infixl 6 add as +
```

#### `(*)`

``` purescript
infixl 7 multiply as *
```

#### `(%)`

``` purescript
infixl 7 remainder as %
```

### Re-exported from String:

#### `append`

``` purescript
append :: String -> String -> String
```

Append two `String`s.

#### `(++)`

``` purescript
infixr 5 append as ++
```

### Re-exported from Task:

#### `Task`

``` purescript
data Task :: * -> *
```

A `Task` represents a computation which can have side-effects.

#### `sequence_`

``` purescript
sequence_ :: forall a. Array (Task a) -> Task Unit
```

Perform a sequence of tasks, ignoring the results.

#### `sequence`

``` purescript
sequence :: forall a. Array (Task a) -> Task (Array a)
```

Perform a sequence of tasks, collecting the results.

#### `pure`

``` purescript
pure :: forall a. a -> Task a
```

Create a `Task` which returns a value with no side-effects.

#### `log`

``` purescript
log :: String -> Task Unit
```

Create a `Task` which logs a `String` to the console.

#### `bind`

``` purescript
bind :: forall a b. Task a -> (a -> Task b) -> Task b
```

Create a `Task` which combines two `Task`s, passing the result of the first to a function,
which determines the second.

### Re-exported from Unit:

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

