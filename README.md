# hstools

Some simple command line tools made with Haskell. 


### pjson: a json pretty printer

Compile: 

    cabal install json
    ghc -o pjson pjson.hs 

Run:

    curl https://api.github.com/users/danchoi/events | pjson
    
    # (NB github json is already pretty-formatted, but pjson will reindent it)

### pxml: an xml pretty printer

Compile: 

    cabal install hxt
    ghc -o pxml pxml.hs 

Run:

    curl http://news.ycombinator.com/rss | pxml
    

