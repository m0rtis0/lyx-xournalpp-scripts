#!/bin/sh
FPATH=$1/$2.xopp
NPATH=$1/$2.svg
if [ ! -f "$FPATH"]; then
    cp /home/YOURUSERNAME/path/to/template.xopp $FPATH
fi
xournalpp $FPATH
xournalpp -i $NPATH $FPATH

if [ ! -f "$FPATH"]; then
    echo "LYXCMD:shell:inset-insert:graphics filename $NPATH" > /home/YOURUSERNAME/.lyxpipe.in
fi
