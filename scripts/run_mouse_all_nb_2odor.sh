#!/bin/bash

# edit here:
#DEST_FOLDER="/home/fabios/data/data/odor_ass_learning_2019/results/"

#note=("decoding_ext2VSrenew" "decoding_postVSext1" "decoding_postVSext2" "decoding_postVSrenew" "decoding_pre_post_ext1_ext2_renew" "decoding_pre_post_ext2" "decoding_preVSpost")

#for ((j=0;i<${#MOUSE[@]};++j)); do
#for m in c3m1 c4m3 c4m4 c3m2 c3f3 c3f2 c10m6 c10m8 90 91 92 93 dhpcg1 dhpcg20 dhpc24; do
for m in c3f3 c3f2 c3m2 c4m3 c4m4 c10m8 91 90 92 c3m1 dhpcg1 dhpcg20 dhpc24 dhpc35 dhpc36; do
    for note in aha_find_decode; do
        sleep 3
        cp ../results/c3m1/notebooks/$note.ipynb ../results/$m/notebooks;
        sh exec_nb.sh ../results/$m/notebooks/$note.ipynb
    done
done
