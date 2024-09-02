# Bash scripts and functions

Random collection of scripts and functions that I periodically use depending on what project(s) I'm working on.


## My "include all functions" script to include all used functions direcrtly inside the functions directory.

```
# Include all ".sh" files directly inside the functions directory.
for f in ~/.bash/functions/*; do
    if [[ $f == *.sh ]] ;
    then
        . $f
    fi
done
```
