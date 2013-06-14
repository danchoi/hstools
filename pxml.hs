{-
 - an XML pretty printer
 - -}

module Main
where
 
import Text.XML.HXT.Core
import Text.XML.HXT.Curl 
import System.IO
 
import System.Environment
 
main :: IO ()
main
    = do
      src <- getContents
      runX ( readString [withParseHTML no, withCurl []] src
	     >>>
	     writeDocument [withIndent yes ,withOutputEncoding isoLatin1 ] "-"
	   )
      return ()
