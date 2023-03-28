#!/bin/bash

#worked entirely for: c10m6, c10m8 (except catch t series), 91 (except catch behavior), 92, 93
#worked for: c3m1, c3f3, c3m2, c4m4, dhpcg1, dhpcg20(except cnmfe 3odor_catch), dhpc24, 90 (catch missing behavior)
#didn't work for: c3f2 (missing post_rev) 
# edit here:
DEST_FOLDER="/home/fabios/data/data/odor_ass_learning_2019/3odor/results/"

MOUSE=('c3m1' 'c3m2' 'c3f3' 'c3f2' 'c4m4' 'c10m6' 'c10m8' '90' '91' '92' '93' 'dHPC24' 'dHPC20' 'dHPCg1')
#MOUSE=('C3M1' 'C3M2' 'C3F3' 'C3F2' 'C4M4' 'c10m6' 'c10m8' '90' '91' '92' '93' 'dHPCg1' 'dHPC24' 'dhpcg20' 'dHPCg20')

sides=('-')
    
    session_names=('3odor_pre' '3odor_post' '3odor_pre_rev' '3odor_post_rev')


for m in c3m2 c3m1 c3f3 c3f2 c4m4 c10m6 c10m8 90 91 92 93 dHPCg20 dHPC24 dHPCg1; do 
    for s in "post\ v\ rev-post" "pre\ v\ post" "pre\ v\ rev-pre" "pre\ v\ rev-post" "post\ v\ rev-pre" "rev-pre\ v\ rev-post"; do
#c3m2 c3m1 c3f3 c3f2 c4m4 c10m6 c10m8 90 91 92 93 dHPC20 dHPC24
    #mkdir -p $DEST_FOLDER/$m/CellReg;
    #cp -r /home/fabios/server/Jeremy/3odor_cellreg/$m/* /home/fabios/data/data/odor_ass_learning_2019/3odor/results/$m/CellReg/
        if [[ $s = "pre\ v\ post" ]]
        then
            s_n=cellreg_preVSpost.mat
        elif [[ $s = "post\ v\ reversal\ post" ]]
        then
            s_n=cellreg_postVSpost_rev.mat
        fi
        cp /home/fabios/data/data/odor_ass_learning_2019/3odor/results/$m/CellReg/$s/cellRegister*  /home/fabios/data/data/odor_ass_learning_2019/3odor/results/$m/CellReg/$s_n
    done
done








