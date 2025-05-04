# Heads up

I've started creating some of the functionality I would otherwise add here, in a new C# based console app: https://github.com/kallehauge/terminal-commands

The primary reason is to learn C# in a functional way - and to add more functionality in the future that benefits from having SDK's available, etc.

---

# Bash scripts and functions

Random collection of scripts and functions that I periodically use depending on what project(s) I'm working on.


## Usage

I have my old trusty "include all functions" script so I don't have to do it one by one.

It does assume this project was cloned into `~/.bash`, so watch out for that.

```
# Include all ".sh" files directly inside the functions directory.
for f in ~/.bash/functions/*; do
    if [[ $f == *.sh ]] ;
    then
        . $f
    fi
done
```
