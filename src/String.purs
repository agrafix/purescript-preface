module String
  ( append, (++)
  ) where

infixr 5 append as ++

-- | Append two `String`s.
foreign import append :: String -> String -> String
