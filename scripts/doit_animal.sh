#!/bin/bash

cp ../results/$1/notebooks/$2.ipynb  ../results/$3/notebooks;
sh exec_nb.sh ../results/$3/notebooks/$2
