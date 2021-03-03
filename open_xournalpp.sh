#!/bin/sh
FPATH=$1/$2.xopp
NPATH=$1/$2.svg
cp ~/Documents/Schule/2021/General/template.xopp $FPATH
xournalpp $FPATH
xournalpp -i $NPATH $FPATH
