#!/bin/sh
FPATH=$1/$2.xopp
NPATH=$1/$2.svg
FIRST_RUN="false"
if [ ! -f "$FPATH" ]; then
    cp /home/YOURUSERNAME/path/to/template.xopp $FPATH
    FIRST_RUN="true"
fi
xournalpp $FPATH
xournalpp -i $NPATH $FPATH

if [ $FIRST_RUN = "true" ]; then
    echo "LYXCMD:shell:inset-insert:graphics filename $NPATH" > /home/YOURUSERNAME/.lyxpipe.in
fi
