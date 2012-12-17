{- 
cabal install json 
ghc -o pjson PrettyJson.hs
-} 
module Main where
import Control.Monad (liftM)
import Text.JSON.Pretty
import Text.JSON.String


prettyPrintJSON :: String -> String 
prettyPrintJSON s = either show (show . pp_value) (runGetJSON readJSTopType s)

main = do
    s <- getContents
    putStrLn $ prettyPrintJSON s
    

