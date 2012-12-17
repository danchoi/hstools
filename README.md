# hstools

Some simple command line tools made with Haskell. 


### pjsono: json pretty printer

Compile: 

    ghc -o pjson pjson.hs 

Run:

    curl https://api.github.com/users/danchoi/events | pjson
    
    # (NB github json is already pretty-formatted, but pjson will reindent it)
