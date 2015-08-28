## Module Array

#### `map`

``` purescript
map :: forall a b. (a -> b) -> Array a -> Array b
```

Create a new `Array` by applying a function to the elements of another `Array`.

#### `filter`

``` purescript
filter :: forall a. (a -> Boolean) -> Array a -> Array a
```

Create a new `Array` by keeping those elements of another `Array` for which the specified function
returns `true`.


