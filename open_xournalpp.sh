#!/bin/sh
FPATH=$1/$2.xopp
NPATH=$1/$2.svg
if [ ! -f "$FPATH"]; then
    cp ~/Documents/Schule/2021/General/template.xopp $FPATH
fi
xournalpp $FPATH
xournalpp -i $NPATH $FPATH

if [ ! -f "$FPATH"]; then
    echo "LYXCMD:shell:inset-insert:graphics filename $NPATH" > ~/.lyx/lyxpipe.in
fi
