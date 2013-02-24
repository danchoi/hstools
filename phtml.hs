{-# LANGUAGE OverloadedStrings #-}
module Main where
import Text.HandsomeSoup
import Control.Monad.Trans.Maybe
import Text.CSS.Parser

import Text.XML.HXT.Core

main = do 
  src <- getContents
  -- doc <- parseHtml contents
  runX ( readString [withParseHTML yes] src
         >>> writeDocument [withIndent yes ,withOutputEncoding isoLatin1 ] "-"
       )
  return ()

