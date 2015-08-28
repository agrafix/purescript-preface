module Either
  ( Either(..), mapLeft, mapRight
  ) where

-- | The `Either` type constructor is used to describe values which are constructed using values
-- | from one of two types.
-- | `Either` is sometimes used to express _values or errors_, with errors on the `Left` and successful results
-- | on the `Right`.
data Either a b = Left a | Right b

-- | Change values constructed using `Left` by applying a function. 
mapLeft :: forall r a b. (a -> b) -> Either a r -> Either b r
mapLeft f (Left a) = Left (f a)
mapLeft _ (Right r) = Right r

-- | Change values constructed using `Right` by applying a function.
mapRight :: forall l a b. (a -> b) -> Either l a -> Either l b
mapRight _ (Left l) = Left l
mapRight f (Right a) = Right (f a)