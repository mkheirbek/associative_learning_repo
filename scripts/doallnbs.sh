#!/bin/bash

cp ../results/$1/$2/notebooks/$3.ipynb ../results/$4/$5/notebooks;
sh exec_nb.sh ../results/$4/$5/notebooks/$3
