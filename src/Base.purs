module Graphics.D3.Base
  ( DOM()
  , D3Eff()
  , void
  ) where

import Control.Monad.Eff

-- The type of effects having to do with observing and modifying the DOM
foreign import data DOM :: !

-- An action which may observe or modify the DOM
type D3Eff a = forall e. Eff (dom :: DOM | e) a

-- Remove this once it's available in Prelude
void :: forall f a. (Functor f) => f a -> f Unit
void fa = const unit <$> fa
