#!/bin/zsh

# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

for filename in $SCRIPTPATH/ly/*.ly
do
    lilypond --pdf --pspdfopt='TeX' $filename &> /dev/null
    filely=$(basename -- "$filename")
    file=${filely%.*}
    echo Converting $file ...
    mv $SCRIPTPATH/$file.pdf $SCRIPTPATH/pdf/
done