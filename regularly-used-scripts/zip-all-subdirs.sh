# @link https://unix.stackexchange.com/questions/68489/command-to-zip-multiple-directories-into-individual-zip-files
for i in */; do echo -r "${i%/}.zip" "$i"; done
