#!/bin/bash

# edit here:
#DEST_FOLDER="/home/fabios/data/data/odor_ass_learning_2019/results/"

#note=("decoding_ext2VSrenew" "decoding_postVSext1" "decoding_postVSext2" "decoding_postVSrenew" "decoding_pre_post_ext1_ext2_renew" "decoding_pre_post_ext2" "decoding_preVSpost")

#for ((j=0;i<${#MOUSE[@]};++j)); do
#for m in dhpcg1 dhpcg20 dhpc24 c3m1 c4m3 c3m2 c3f3 c3f2 c4m4 c10m6 c10m8 90 91 92 93; do
# 
#c4f3
#    for sess in pre post ext1 ext2 renew; do
#        for note in decoding_odors decoding_odors_cs_and_trace decoding_odors_only_trace; do
#            sleep 20
#            cp ../results/c3m1/pre/notebooks/$note.ipynb ../results/$m/$sess/notebooks;
#            sh exec_nb.sh ../results/$m/$sess/notebooks/$note.ipynb
#        done
#    done
#done
#!/bin/bash

# edit here:
DEST_FOLDER="/home/fabios/data/data/odor_ass_learning_2019/results/"

#note=("decoding_ext2VSrenew" "decoding_postVSext1" "decoding_postVSext2" "decoding_postVSrenew" "decoding_pre_post_ext1_ext2_renew" "decoding_pre_post_ext2" "decoding_preVSpost")
#decoding_around_onset decoding_around_onset_0.5sec decoding_around_onset_2s_bins decoding_licks decoding_odors decoding_odors_cs_and_trace decoding_odors_only_trace decoding_through_session selectivity selectivity_1sec_JSB selectivity_intrasession_JSB selectivity_JSB selectivity_time_bins selectivity_trials1-30_JSB
#for ((j=0;i<${#MOUSE[@]};++j)); do
for m in c3f3 c3f2 c3m2 c4m3 c4m4 c10m8 91 90 92 93 c3m1 dhpcg1 dhpcg20 dhpc24 dhpc35 dhpc36; do
    for sess in pre d2 post ext1 ext2 renew; do
        for note in lick_cells; do
            sleep 10
            cp ../results/c3m1/pre/notebooks/$note.ipynb ../results/$m/$sess/notebooks/;
            sh exec_nb.sh ../results/$m/$sess/notebooks/$note.ipynb
        done
    done
done
#decoding_around_onset decoding_around_onset_0.5sec decoding_around_onset_2s_bins decoding_licks decoding_odors decoding_odors_cs_and_trace decoding_odors_only_trace decoding_through_session selectivity selectivity_1sec_JSB selectivity_intrasession_JSB selectivity_JSB selectivity_time_bins selectivity_trials1-30_JSB