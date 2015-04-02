{-# LANGUAGE OverloadedStrings #-}
module Main where
import Control.Monad.Trans.Maybe

import Text.XML.HXT.Core

main = do 
  src <- getContents
  runX ( readString [withParseHTML yes] src
         -- >>> putXmlTree "-" 
         >>> writeDocument [withIndent yes ,withOutputEncoding utf8 ] "-"
       )
  return ()

