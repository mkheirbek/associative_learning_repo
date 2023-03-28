#!/bin/bash

# edit here:
DEST_FOLDER="/home/fabios/data/data/odor_ass_learning_2019/results/"

#c3f2 is a problem for some reason
#same with dHPCs, globbing problem?
#
MOUSE=('C3F2')
#MOUSE=('C3M1' 'C3M2' 'C3F3' 'C4F3' 'C3F2' 'C4M4' 'C4M3' 'c10m6' 'c10m8' '90' '91' '92' '93' 'dHPCg1' 'dHPC24' 'dHPCg20')

note="selectivity"

#DEST_MOUSE=`echo "$MOUSE" | tr '[:upper:]' '[:lower:]'`

STR='\n'

for ((j=0;i<${#MOUSE[@]};++j)); do
    printf "%s"$STR "$j"
    m=${MOUSE[j]}
    
    if [[ "$m" = "c10m8" ]]
    then
        days=('091919' '092019' '092319' '092419' '092519' '092619' '100219' '100519' '100719' '101119' '101219')
        GROUP='2019_Grp3'
        m_cor=$m
    elif [[ "$m" = "c10m6" ]]
    then
        days=('091919' '092119' '092519' '092619' '092719' '092819' '100219' '100519' '100719' '101119' '101219')
        GROUP='2019_Grp3'
        m_cor=$m
    elif [[ $m = 'C3M1' ]]
    then
        days=('050219' '050319' '050619' '050719' '050819' '050919' '051019' '051219' '051319' '051619' '051719')
        GROUP='2019_Grp2'
        m_cor=$m
    elif [[ $m = 'C3M2' ]]
    then
        days=('032019' '032119' '032419' '032519' '032619' '032719' '033019' '041019' '041119' '041519' '041619')
        GROUP='2019_Grp1'
        m_cor=$m
    elif [[ $m = 'C4M4' ]]
    then
        days=('050219' '050319' '050619' '050719' '050819' '050919' '051019' '051219' '051319' '051619' '051719')
        GROUP='2019_Grp2'
        m_cor=$m
    elif [[ $m = 'C4M3' ]]
    then
        days=('050219' '050319' '050619' '050719' '050819' '050919')
        GROUP='2019_Grp2'
        m_cor=$m
    elif [[ $m = 'C3F2' ]]
    then
        days=('032019' '032119' '032519' '032619' '032719' '032819')
        GROUP='2019_Grp1'
        m_cor=$m
    elif [[ $m = 'C3F3' ]]
    then
        days=('032019' '032119' '032519' '032619' '032719' '032819' '033019' '041019' '041119' '041519' '041619')
        GROUP='2019_Grp1'
        m_cor=$m
    elif [[ $m = 'C4F3' ]]
    then
        days=('050219' '050319' '050619')
        GROUP='2019_Grp2'
        m_cor=$m
    elif [[ $m = '91' ]]
    then
        days=("111819" "111919" "112219" "112319" "112419" "112519" "120919" "121219" "121319" "121719" "121819")
        GROUP='2019_Grp4'
        m_cor="${sides}${m}${sides}"
    elif [[ $m = '92' ]]
    then
        days=("111819" "111919" "112219" "112319" "112419" "112519" "120919" "121219" "121319" "121719" "122019")
        GROUP='2019_Grp4'
        m_cor="${sides}${m}${sides}"
    elif [[ $m = '93' ]]
    then
        days=("111819" "111919" "112319" "112419" "112519" "112619")
        GROUP='2019_Grp4'
        m_cor="${sides}${m}${sides}"
    elif [[ $m = '90' ]]
    then
        days=("010920" "011020" "011320" "011520" "011620" "011720")
        GROUP='2019_Grp5'
        m_cor="${sides}${m}${sides}"
    elif [[ $m = 'dHPCg20' ]]
    then
        days=('091919' '092119' '092419' '092519' '092619' '092719' '100219' '100519' '100719' '101119' '101219')
        GROUP='2019_Grp3'
        m_cor=$m
    elif [[ $m = 'dHPC24' ]]
    then
        days=("111819" "111919" "112219" "112319" "112419" "112519" "120919" "121219" "121319" "121719")
        GROUP='2019_Grp4'
        m_cor=$m
    elif [[ $m = 'dHPCg1' ]]
    then
        days=('032019' '032119' '032519' '032619' '032719' '032819' '033019' '041019' '041119' '041519' '041619')
        GROUP='2019_Grp1'
        m_cor=$m
    fi
    
    session_names=("2_odor_expo" "pre" "post" "ext1" "ext2" "renew")
    
    #'3odor_pre' '3odor_post' '3odor_pre_rev' '3odor_post_rev' '3odor_catch'
    #echo "${#session_names[@]}"
    
    DEST_MOUSE=`echo "$m" | tr '[:upper:]' '[:lower:]'`

    for ((i=0;i<${#days[@]};++i)); do
    #for d in 033019 041019 041119 041519 041619; do
        
        name=${session_names[i]}
        #echo "%s/n" "${i}"
        
        if [[ "$i" -lt "${#session_names[@]}" ]]
        then
            cp ../results/c3m1/pre/notebooks/$note.ipynb ../results/$DEST_MOUSE/$name/notebooks;
            sh exec_nb.sh ../results/$DEST_MOUSE/$name/notebooks/$note
            
        else
            printf "%s is blank" "${session_names[i]}"
        fi
        
    done
done





