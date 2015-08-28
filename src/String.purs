module String
  ( append, (++)
  ) where

infixr 5 ++

-- | Append two `String`s.
foreign import append :: String -> String -> String

-- | An infix operator for appending `String`s.
(++) :: String -> String -> String
(++) = append