#!/bin/bash

/home/fabios/anaconda2/bin/jupyter nbconvert --execute --inplace --to notebook $1 &>/dev/null &
