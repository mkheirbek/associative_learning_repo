#!/bin/bash

for m in 92b 93b; do
        for note in tuning_stability_values_1sec_JSB; do
            sleep 7
            cp ../3odor/results/91b/notebooks/$note.ipynb ../3odor/results/$m/notebooks;
            sh exec_nb.sh ../3odor/results/$m/notebooks/$note.ipynb
        done
    done

#c10m6 c3m2 c4m4 c3f3 c3f2 c10m8 91 92 93 dhpcg1 dhpcg20 dhpc24 c3m1 90 91b 92b 93b

###edit here:
#for m in c10m6 c3m2 c4m4 c3f3 c3f2 c10m8 91 92 93 dhpcg1 dhpcg20 dhpc24 c3m1 90; do # 91b 92b 93b; do
#    for sess in 3odor_catch ; do
#        for note in selectivity_intrasession_1sec_JSB; do
#            sleep 7
#            cp ../3odor/results/90/3odor_pre/notebooks/$note.ipynb ../3odor/results/$m/$sess/notebooks;
#            sh exec_nb.sh ../3odor/results/$m/$sess/notebooks/$note.ipynb
#        done
#    done
#done