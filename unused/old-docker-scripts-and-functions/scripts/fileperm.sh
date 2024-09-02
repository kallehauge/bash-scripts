#!/bin/bash
# Echo name of directory and set filemod to false.
for d in */ ; do
    echo $d && (cd $d && exec git config core.filemode false)
done
