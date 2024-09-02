# Bash scripts and functions

Random collection of scripts and functions that I periodically use depending on what project(s) I'm working on.


## Usage

I have my old trusty "include all functions" script so I don't have to do it one by one:

```
# Include all ".sh" files directly inside the functions directory.
for f in ~/.bash/functions/*; do
    if [[ $f == *.sh ]] ;
    then
        . $f
    fi
done
```
