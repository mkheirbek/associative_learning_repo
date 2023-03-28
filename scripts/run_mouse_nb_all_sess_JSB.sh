#!/bin/bash

##edit here:
#for m in 93; do
#    for sess in d2; do
#        for note in selectivity_time_bins decoding_around_onset selectivity_1sec_JSB selectivity_intrasession_JSB decoding_odors_cs_and_trace; do
#            #sleep 5
#            cp ../results/90/pre/notebooks/$note.ipynb ../results/$m/$sess/notebooks;
#            sh exec_nb.sh ../results/$m/$sess/notebooks/$note.ipynb
#        done
#    done
#done

# TO RUN ONE LEVEL UP (ACROSS ALL SESSIONS)
for m in c3f3 c3f2 c3m1 c3m2 c4m3 c4m4 c10m8 91 92 93 dhpcg1 dhpcg20 dhpc24 dhpc35 dhpc36; do
    for note in modulation_index; do
        sleep 8
        cp ../results/90/notebooks/$note.ipynb ../results/$m/notebooks;
        sh exec_nb.sh ../results/$m/notebooks/$note.ipynb
    done
done