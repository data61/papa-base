{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Data.Foldable(
  mapM_
, sequence_
, Foldable
) where

import Control.Applicative(Applicative)
import Data.Foldable(Foldable(fold, foldMap, foldr, foldr', foldl, foldl', toList, null, elem, sum, product), traverse_, sequenceA_)

mapM_ ::
  (Foldable t, Applicative f) =>
  (a -> f b)
  -> t a
  -> f ()
mapM_ =
  traverse_
  
sequence_ ::
  (Foldable t, Applicative f) =>
  t (f a)
  -> f ()
sequence_ =
  sequenceA_
