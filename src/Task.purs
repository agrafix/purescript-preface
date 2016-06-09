module Task
  ( Task()
  , pure
  , bind
  , log
  , sequence
  , sequence_
  ) where

import Array (concat, fold)
import Unit (Unit, unit)

-- | A `Task` represents a computation which can have side-effects.
foreign import data Task :: * -> *

-- | Create a `Task` which returns a value with no side-effects.
foreign import pure :: forall a. a -> Task a

-- | Create a `Task` which combines two `Task`s, passing the result of the first to a function,
-- | which determines the second.
foreign import bind :: forall a b. Task a -> (a -> Task b) -> Task b

-- | Create a `Task` which logs a `String` to the console.
foreign import log :: String -> Task Unit

-- | Perform a sequence of tasks, collecting the results.
sequence :: forall a. Array (Task a) -> Task (Array a)
sequence = fold (\t1 t2 -> do xs <- t1
                              x  <- t2
                              pure (xs `concat` [x])) (pure [])

-- | Perform a sequence of tasks, ignoring the results.
sequence_ :: forall a. Array (Task a) -> Task Unit
sequence_ = fold (\t1 t2 -> do _ <- t1
                               _ <- t2
                               pure unit) (pure unit)
