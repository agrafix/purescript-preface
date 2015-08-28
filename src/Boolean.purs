module Boolean
  ( and         , (&&)
  , or          , (||)
  , not
  ) where

infixr 3 &&
infixr 2 ||

-- | Boolean AND.
foreign import and :: Boolean -> Boolean -> Boolean

-- | An infix operator for boolean AND.
(&&) :: Boolean -> Boolean -> Boolean
(&&) = and

-- | Boolean OR.
foreign import or :: Boolean -> Boolean -> Boolean

-- | An infix operator for boolean OR.
(||) :: Boolean -> Boolean -> Boolean
(||) = or

-- | Boolean negation.
foreign import not :: Boolean -> Boolean