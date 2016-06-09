module Boolean
  ( and         , (&&)
  , or          , (||)
  , not
  ) where

infixr 3 and as &&
infixr 2 or as ||

-- | Boolean AND.
foreign import and :: Boolean -> Boolean -> Boolean

-- | Boolean OR.
foreign import or :: Boolean -> Boolean -> Boolean

-- | Boolean negation.
foreign import not :: Boolean -> Boolean
