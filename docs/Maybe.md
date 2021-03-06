## Module Maybe

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

#### `bind`

``` purescript
bind :: forall a b. Maybe a -> (a -> Maybe b) -> Maybe b
```

Try one computation, and then try another which depends on its result.


