-- | The `Preface` is an alternative to the `Prelude` which can be used for teaching purposes.
-- |
-- | See the individual modules' documentation for details:
-- |
-- | - [`Array`](Array.md)          - Functions on arrays: maps, folds, etc.
-- | - [`Boolean`](Boolean.md)      - Basic boolean algebra.
-- | - [`Either`](Either.md)        - A simple example of an _algebraic data type_.
-- | - [`Function`](Function.md)    - Constructions on functions - composition, application, etc.
-- | - [`Maybe`](Maybe.md)          - A data structure which may or may not contain a value.
-- | - [`Number`](Number.md)        - Functions and operators on numbers.
-- | - [`String`](String.md)        - Functions and operators on strings.
-- | - [`Task`](Task.md)            - A simple model for code with side-effects.

module Preface
  ( module Array
  , module Boolean
  , module Either
  , module Function
  , module Maybe
  , module Number
  , module String
  , module Task
  , module Unit
  ) where

import Array
import Boolean
import Either
import Function
import Maybe
import Number
import String
import Task
import Unit