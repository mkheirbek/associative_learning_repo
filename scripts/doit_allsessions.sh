#!/bin/bash

# usage:
# sh doit_allsessions.sh ORIGIN_MOUSE ORIGIN_SESSION ORIGIN_NOTEBOOK DESTINATION_MOUSE

for session in `ls ../results/$4/`; do sh doit.sh $1 $2 $3 $4 $session; done
