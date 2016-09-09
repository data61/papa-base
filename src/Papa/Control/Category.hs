{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Control.Category(
  id
) where

import Control.Category(Category)
import qualified Control.Category as Category(id)

id ::
  Category cat =>
  cat a a
id =
  Category.id
