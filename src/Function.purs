module Function
  ( apply       , ($)
  , compose     , (<<<)
  , flip
  , const
  ) where

-- | Apply a function to an argument.
apply :: forall a b. (a -> b) -> a -> b
apply f x = f x

infixr 0 apply as $

-- | Compose two functions, i.e. create a function which applies one function and then the other.
compose :: forall a b c. (b -> c) -> (a -> b) -> a -> c
compose f g x = f (g x)

infixr 9 compose as <<<

-- | Flip the order of the first two arguments of a function.
flip :: forall a b c. (a -> b -> c) -> b -> a -> c
flip f b a = f a b

-- | Create a function which returns its first argument and ignores its second.
const :: forall a b. a -> b -> a
const a _ = a
