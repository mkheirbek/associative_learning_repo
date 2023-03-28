#!/bin/bash

# edit here:
DEST_FOLDER="/home/fabios/data/data/odor_ass_learning_2019/3odor/results/"


#(c3m1' 'c3m2' 'c3f3' 'c4m4' 'c4m3' 'c10m6' 'c10m8'  '90' '91' '92' '93' )
#MOUSE=('c3m1' 'c3m2' 'c3f3' 'c4f3' 'c3f2' 'c4m4' 'c4m3' 'c10m6' 'c10m8' '90' '91' '92' '93' 'dHPCg1' 'dHPC24' 'dHPCg20')

#note=("decoding_ext2VSrenew" "decoding_postVSext1" "decoding_postVSext2" "decoding_postVSrenew" "decoding_pre_post_ext1_ext2_renew" "decoding_pre_post_ext2" "decoding_preVSpost")

#c3m2 c3f3 c3f2 c4f3 c4m4 c4m3 c10m6 c10m8 90 91 92 93 dhpcg1 dhpcg20 dhpc24
#for ((j=0;i<${#MOUSE[@]};++j)); do
for m in dhpc35 dhpc36; do
#m="c3m2"    
 #   printf "$m"

    for note in lambo_sessions; do #decoding_around_onset_rw_csm 
        #note="decoding_preVSpost"
        cp ../results/c3m1/notebooks/$note.ipynb ../results/$m/notebooks;
        sh exec_nb.sh ../results/$m/notebooks/$note.ipynb

       # done

    done
done




