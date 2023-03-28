#!/bin/bash


#c3f2 is a problem for some reason
#same with dHPCs, globbing problem?

#MOUSE=('C3M1' 'C3M2' 'C3F3' 'C3F2' 'C4M4' 'c10m6' 'c10m8' '90' '91' '92' '93' 'dHPCg1' 'dHPC24' 'dHPCg20') #'dHPC24' 'dHPCg20'
#('C3M1' 'C3M2' 'C3F3' 'C4M4' 'C4M3' 'c10m6' 'c10m8' '90' '91' '92' '93' )
MOUSE=('C3M1' 'C3M2' 'C3F3' 'C3F2' 'C4M4' 'c10m6' 'c10m8' '90' '91' '92' '93' 'dHPCg1' 'dHPC24' 'dHPCg20')

#note="decoding_through_session"   changed this to be a for loop explicity written below

#DEST_MOUSE=`echo "$MOUSE" | tr '[:upper:]' '[:lower:]'`

STR='\n'

for ((j=0;j<${#MOUSE[@]};++j)); do
    printf "%s"$STR "$j"
    m=${MOUSE[j]}
    
    session_names=('3odor_pre' '3odor_post' '3odor_pre_rev' '3odor_post_rev')
    
    #"2_odor_expo" "pre" "post" "ext1" "ext2" "renew"
    #'3odor_pre' '3odor_post' '3odor_pre_rev' '3odor_post_rev' '3odor_catch'
    #echo "${#session_names[@]}"
    
    DEST_MOUSE=`echo "$m" | tr '[:upper:]' '[:lower:]'`

    for ((i=0;i<${#session_names[@]};++i)); do
    
        name=${session_names[i]}
        #echo "%s/n" "${i}"
        
        if [[ "$i" -lt "${#session_names[@]}" ]]
        then
            for note in decoding_around_onset_rw_csm; do
            #decoding_around_onset_sh_csm
                cp ../3odor/results/c3m1/3odor_pre/notebooks/$note.ipynb ../3odor/results/$DEST_MOUSE/$name/notebooks/;
                sh exec_nb.sh ../3odor/results/$DEST_MOUSE/$name/notebooks/$note
            
            done
        
        else
            printf "%s is blank" "${session_names[i]}"
        fi
        
    done
done



#decoding_around_onset_rw_csm decoding_around_onset_sh_csm decoding_around_onset_sh_rw decoding_licks decoding_odors_cs_and_trace_rw_csm decoding_odors_cs_and_trace_sh_csm decoding_odors_cs_and_trace_sh_rw decoding_odors_only_trace_rw_csm decoding_odors_only_trace_sh_csm decoding_odors_only_trace_sh_rw decoding_odors_rw_csm decoding_odors_sh_csm decoding_odors_sh_rw

