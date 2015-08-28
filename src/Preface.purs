-- | The `Preface` is an alternative to the `Prelude`. It provides simpler types,
-- | and is intended to be a more accessible standard library for beginners.

module Preface
  ( Unit(), unit
  ) where

-- | A type with only one value.
data Unit = Unit

-- | The only value of the `Unit` type.
unit :: Unit
unit = Unit
