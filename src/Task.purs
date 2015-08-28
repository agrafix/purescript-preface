module Task
  ( Task()
  , pure
  , bind
  , log
  , sequence
  ) where

import Unit
import Array

-- | A `Task` represents a computation which can have side-effects.
foreign import data Task :: * -> *

-- | Create a `Task` which returns a value with no side-effects.
foreign import pure :: forall a. a -> Task a

-- | Create a `Task` which combines two `Task`s, passing the result of the first to a function,
-- | which determines the second.
foreign import bind :: forall a b. Task a -> (a -> Task b) -> Task b

-- | Create a `Task` which logs a `String` to the console.
foreign import log :: String -> Task Unit

-- | Perform a sequence of tasks, ignoring the results.
sequence :: forall a. Array (Task a) -> Task (Array a)
sequence = fold (\t1 t2 -> do xs <- t1
                              x  <- t2
                              pure (xs `concat` [x])) (pure [])