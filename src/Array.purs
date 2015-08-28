module Array
  ( map
  , filter
  , fold
  , concat
  ) where

-- | Create a new `Array` by applying a function to the elements of another `Array`.
foreign import map :: forall a b. (a -> b) -> Array a -> Array b

-- | Create a new `Array` by keeping those elements of another `Array` for which the specified function
-- | returns `true`.
foreign import filter :: forall a. (a -> Boolean) -> Array a -> Array a

-- | "Fold" the elements of the array, using a function to combine each element with the current accumulator.
foreign import fold :: forall a acc. (acc -> a -> acc) -> acc -> Array a -> acc

-- | Concatenate the elements of two arrays
foreign import concat :: forall a. Array a -> Array a -> Array a