# Bash scripts and functions

This is some of the functions and script I use in my day-to-day life.

More to come...

## My script to include all used functions direcrtly inside the functions directory.

```
# Include all ".sh" files directly inside the functions directory.
for f in ~/.bash/functions/*; do
    if [[ $f == *.sh ]] && [[ ! "$f" =~ ^_ ]] ;
    then
        . $f
    fi
done
```
