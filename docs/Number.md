## Module Number

#### `(+)`

``` purescript
infixl 6 add as +
```

#### `(-)`

``` purescript
infixl 6 subtract as -
```

#### `(*)`

``` purescript
infixl 7 multiply as *
```

#### `(/)`

``` purescript
infixl 7 divide as /
```

#### `add`

``` purescript
add :: Number -> Number -> Number
```

Add two `Number`s.

#### `subtract`

``` purescript
subtract :: Number -> Number -> Number
```

Subtract a `Number` from another.

#### `multiply`

``` purescript
multiply :: Number -> Number -> Number
```

Multiply two `Number`s.

#### `divide`

``` purescript
divide :: Number -> Number -> Number
```

Divide a `Number` by another.

#### `remainder`

``` purescript
remainder :: Number -> Number -> Number
```

Find the remainder after division

#### `(%)`

``` purescript
infixl 7 remainder as %
```

#### `max`

``` purescript
max :: Number -> Number -> Number
```

Find the maximum of two numbers.

#### `min`

``` purescript
min :: Number -> Number -> Number
```

Find the minimum of two numbers.

#### `(<)`

``` purescript
infixl 4 lt as <
```

#### `(>)`

``` purescript
infixl 4 lte as >
```

#### `(<=)`

``` purescript
infixl 4 gt as <=
```

#### `(>=)`

``` purescript
infixl 4 gte as >=
```

#### `lt`

``` purescript
lt :: Number -> Number -> Boolean
```

Test whether one value is less than another.

#### `lte`

``` purescript
lte :: Number -> Number -> Boolean
```

Test whether one value is less than or equal to another.

#### `gt`

``` purescript
gt :: Number -> Number -> Boolean
```

Test whether one value is greater than another.

#### `gte`

``` purescript
gte :: Number -> Number -> Boolean
```

Test whether one value is greater than or equal to another.


