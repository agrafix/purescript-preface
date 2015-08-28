-- | The `Preface` is an alternative to the `Prelude`. It provides simpler types,
-- | and is intended to be a more accessible standard library for beginners.

module Preface
  ( Unit(), unit
  , Maybe(..), getOrElse
  , Either(..), mapLeft, mapRight
  , map, filter
  , Task(), pure, bind, log
  ) where

-- Unit --------------------------------------------------------------

-- | A type with only one value.
data Unit = Unit

-- | The only value of the `Unit` type.
unit :: Unit
unit = Unit

-- Maybe --------------------------------------------------------------

-- | The `Maybe` type constructor is used to describe values which might be _missing_.
-- | `Maybe` is an alternative to using `null` in other languages.
data Maybe a = Nothing | Just a

-- | Get the value from a `Maybe a`, if it is present, or using a default value, if not.
getOrElse :: forall a. a -> Maybe a -> a
getOrElse _ (Just a) = a
getOrElse a _ = a

-- Either --------------------------------------------------------------

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

-- Arrays --------------------------------------------------------------

-- | Create a new `Array` by applying a function to the elements of another `Array`.
foreign import map :: forall a b. (a -> b) -> Array a -> Array b

-- | Create a new `Array` by keeping those elements of another `Array` for which the specified function
-- | returns `true`.
foreign import filter :: forall a. (a -> Boolean) -> Array a -> Array a

-- Tasks --------------------------------------------------------------

-- | A `Task` represents a computation which can have side-effects.
foreign import data Task :: * -> *

-- | Create a `Task` which returns a value with no side-effects.
foreign import pure :: forall a. a -> Task a

-- | Create a `Task` which combines two `Task`s, passing the result of the first to a function,
-- | which determines the second.
foreign import bind :: forall a b. Task a -> (a -> Task b) -> Task b

-- | Create a `Task` which logs a `String` to the console.
foreign import log :: String -> Task Unit