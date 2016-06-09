module Maybe
  ( Maybe(..)
  , getOrElse
  , bind
  ) where

-- | The `Maybe` type constructor is used to describe values which might be _missing_.
-- | `Maybe` is an alternative to using `null` in other languages.
data Maybe a = Nothing | Just a

-- | Get the value from a `Maybe a`, if it is present, or using a default value, if not.
getOrElse :: forall a. a -> Maybe a -> a
getOrElse _ (Just a) = a
getOrElse a _ = a

-- | Try one computation, and then try another which depends on its result.
bind :: forall a b. Maybe a -> (a -> Maybe b) -> Maybe b
bind Nothing _ = Nothing
bind (Just a) f = f a
