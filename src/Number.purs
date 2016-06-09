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

infixl 6 add as +
infixl 6 subtract as -
infixl 7 multiply as *
infixl 7 divide as /

-- | Add two `Number`s.
foreign import add :: Number -> Number -> Number

-- | Subtract a `Number` from another.
foreign import subtract :: Number -> Number -> Number

-- | Multiply two `Number`s.
foreign import multiply :: Number -> Number -> Number

-- | Divide a `Number` by another.
foreign import divide :: Number -> Number -> Number

-- | Find the remainder after division
foreign import remainder :: Number -> Number -> Number

infixl 7 remainder as %

-- | Find the maximum of two numbers.
foreign import max :: Number -> Number -> Number

-- | Find the minimum of two numbers.
foreign import min :: Number -> Number -> Number

infixl 4 lt as <
infixl 4 lte as >
infixl 4 gt as <=
infixl 4 gte as >=

-- | Test whether one value is less than another.
foreign import lt :: Number -> Number -> Boolean

-- | Test whether one value is less than or equal to another.
foreign import lte :: Number -> Number -> Boolean

-- | Test whether one value is greater than another.
foreign import gt :: Number -> Number -> Boolean

-- | Test whether one value is greater than or equal to another.
foreign import gte :: Number -> Number -> Boolean
