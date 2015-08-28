module Number
  ( add         , (+)
  , subtract    , (-)
  , multiply    , (*)
  , divide      , (/) 
  , remainder   , (%)
  , lt          , (<)
  , lte         , (<=)
  , gt          , (>)
  , gte         , (>=)
  , max, min
  ) where

infixl 6 +
infixl 6 -
infixl 7 *
infixl 7 /

-- | Add two `Number`s.
foreign import add :: Number -> Number -> Number

-- | An infix operator for addition.
(+) :: Number -> Number -> Number
(+) = add

-- | Subtract a `Number` from another.
foreign import subtract :: Number -> Number -> Number

-- | An infix operator for subtraction.
(-) :: Number -> Number -> Number
(-) = subtract

-- | Multiply two `Number`s.
foreign import multiply :: Number -> Number -> Number

-- | An infix operator for multiplication.
(*) :: Number -> Number -> Number
(*) = multiply

-- | Divide a `Number` by another.
foreign import divide :: Number -> Number -> Number

-- | An infix operator for division.
(/) :: Number -> Number -> Number
(/) = divide

-- | Find the remainder after division
foreign import remainder :: Number -> Number -> Number

-- | An infix operator for the `remainder` function.
(%) :: Number -> Number -> Number
(%) = remainder

-- | Find the maximum of two numbers.
foreign import max :: Number -> Number -> Number

-- | Find the minimum of two numbers.
foreign import min :: Number -> Number -> Number

infixl 4 <
infixl 4 >
infixl 4 <=
infixl 4 >=
    
-- | Test whether one value is less than another.
foreign import lt :: Number -> Number -> Boolean

(<) :: Number -> Number -> Boolean
(<) = lt

-- | Test whether one value is less than or equal to another.
foreign import lte :: Number -> Number -> Boolean

(<=) :: Number -> Number -> Boolean
(<=) = lte

-- | Test whether one value is greater than another.
foreign import gt :: Number -> Number -> Boolean

(>) :: Number -> Number -> Boolean
(>) = gt

-- | Test whether one value is greater than or equal to another.
foreign import gte :: Number -> Number -> Boolean

(>=) :: Number -> Number -> Boolean
(>=) = gte