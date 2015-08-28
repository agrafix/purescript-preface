module Maybe
  ( Maybe(..), getOrElse
  ) where

-- | The `Maybe` type constructor is used to describe values which might be _missing_.
-- | `Maybe` is an alternative to using `null` in other languages.
data Maybe a = Nothing | Just a

-- | Get the value from a `Maybe a`, if it is present, or using a default value, if not.
getOrElse :: forall a. a -> Maybe a -> a
getOrElse _ (Just a) = a
getOrElse a _ = a