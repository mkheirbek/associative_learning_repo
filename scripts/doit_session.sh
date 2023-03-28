#!/bin/bash

MOUSE=$1
DAY=$2
NOTEBOOK=$3
DEST_MOUSE=$4
DEST_DAY=$5


cp ../results/$MOUSE/$DAY/notebooks/$NOTEBOOK.ipynb ../results/$DEST_MOUSE/$DEST_DAY/notebooks;
sh exec_nb.sh ../results/$DEST_MOUSE/$DEST_DAY/notebooks/$NOTEBOOK