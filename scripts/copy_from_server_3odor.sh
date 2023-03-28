#!/bin/bash

#worked entirely for: c10m6, c10m8 (except catch t series), 91 (except catch behavior), 92, 93
#worked for: c3m1, c3f3, c3m2, c4m4, dhpcg1, dhpcg20(except cnmfe 3odor_catch), dhpc24, 90 (catch missing behavior)
#didn't work for: c3f2 (missing post_rev) 
# edit here:
DEST_FOLDER="/home/fabios/data/data/odor_ass_learning_2019/3odor/results/"

MOUSE=('dhpcg20' 'dHPCg1')
#MOUSE=('C3M1' 'C3M2' 'C3F3' 'C3F2' 'C4M4' 'c10m6' 'c10m8' '90' '91' '92' '93' 'dHPCg1' 'dHPC24' 'dhpcg20' 'dHPCg20')

sides=('-')

#DEST_MOUSE=`echo "$MOUSE" | tr '[:upper:]' '[:lower:]'`

for ((j=0;i<${#MOUSE[@]};++j)); do
    printf "%s  " "$j"
    m=${MOUSE[j]}
    
    if [[ "$m" = "c10m8" ]]
    then
        days=('100219' '100519' '100719' '101119' '101219')
        GROUP='2019_Grp3'
        m_cor=$m
    elif [[ "$m" = "c10m6" ]]
    then
    #has two pre days at the moment, 0920 and 0921
        days=('100219' '100519' '100719' '101119' '101219')
        GROUP='2019_Grp3'
        m_cor=$m
    elif [[ $m = 'C3M1' ]]
    then
        days=('051019' '051219' '051319' '051619' '051719')
        GROUP='2019_Grp2'
        m_cor=$m
    elif [[ $m = 'C3M2' ]]
    then
        days=('033019' '041019' '041119' '041519' '041619')
        GROUP='2019_Grp1'
        m_cor=$m
    elif [[ $m = 'C4M4' ]]
    then
        days=('051019' '051219' '051319' '051619' '051719')
        GROUP='2019_Grp2'
        m_cor=$m
    elif [[ $m = 'C3F2' ]]
    then
        days=('033019' '041019' '041119' '041519' '041619')
        GROUP='2019_Grp1'
        m_cor=$m
    elif [[ $m = 'C3F3' ]]
    then
        days=('033019' '041019' '041119' '041519' '041619')
        GROUP='2019_Grp1'
        m_cor=$m
    elif [[ $m = '91' ]]
    then
        days=("120919" "121219" "121319" "121719" "121819")
        GROUP='2019_Grp4'
        m_cor="${sides}${m}${sides}"
    elif [[ $m = '92' ]]
    then
        days=("120919" "121219" "121319" "121719" "122019")
        GROUP='2019_Grp4'
        m_cor="${sides}${m}${sides}"
    elif [[ $m = '93' ]]
    then
        days=("120919" "121219" "121319" "121819" "122019")
        GROUP='2019_Grp4'
        m_cor="${sides}${m}${sides}"
    elif [[ $m = '90' ]]
    then
        days=("012120" "012520" "012620" "012920" "013020")
        GROUP='2019_Grp5'
        m_cor="${sides}${m}${sides}"
    elif [[ $m = 'dHPCg20' ]]
    then
        days=('100219' '100519' '100719' '101119' '101219')
        GROUP='2019_Grp3'
        m_cor=$m
    elif [[ $m = 'dhpcg20' ]]
    then
        days=('100219' '100519' '100719' '101119' '101219')
        GROUP='2019_Grp3'
        m_cor=$m
    elif [[ $m = 'dHPC24' ]]
    then
        days=("120919" "121219" "121319" "121719")
        GROUP='2019_Grp4'
        m_cor=$m
    elif [[ $m = 'dHPCg1' ]]
    then
        days=('033019' '041019' '041119' '041519' '041619')
        #days=('032019' '032119' '032519' '032619' '032719' '032819' '033019' '041019' '041119' '041519' '041619')
        GROUP='2019_Grp1'
        m_cor=$m
    fi
    
    session_names=('3odor_pre' '3odor_post' '3odor_pre_rev' '3odor_post_rev' '3odor_catch')

#'2_odor_expo' 'pre_1' 'pre_2' 'post' 'ext1' 'ext2' 'renew' '3odor_pre' '3odor_post' '3odor_pre_rev' '3odor_post_rev' '3odor_catch'

    DEST_MOUSE=`echo "$m" | tr '[:upper:]' '[:lower:]'`

    for ((i=0;i<${#days[@]};++i)); do
    #for d in 033019 041019 041119 041519 041619; do
        printf "%s is in %s\n" "${days[i]}" "${session_names[i]}"
        day=${days[i]}
        name=${session_names[i]}
        #mkdir -p $DEST_FOLDER/$DEST_MOUSE/$name/data;
       # rm -r $DEST_FOLDER/$DEST_MOUSE/$day/
       # cp ~/server/max/assoc\ learning\ $m\ cnmfe\ group2/*$day*$m*/CNMF*onser*/*txt $DEST_FOLDER/$DEST_MOUSE/$name/data;
        #cp /home/fabios/server/Jeremy/Jeremy_2p_Data/$GROUP/$day/*$m_cor*/CN*onser*/*txt $DEST_FOLDER/$DEST_MOUSE/$name/data;
        #cp /home/fabios/server/Jeremy/Jeremy_2p_Data/$GROUP/$day/*$m_cor*/CN*onser*/*mat $DEST_FOLDER/$DEST_MOUSE/$name/data;
        #cp /home/fabios/server/Jeremy/Jeremy_2p_Data/$GROUP/$day/*$m_cor*/*.xml $DEST_FOLDER/$DEST_MOUSE/$name/data/tseries.xml;
        cp ~/data/data/Arduino\ Behavior/Associative\ Learning\ Round\ 2/$GROUP/$m*$day*_coded.txt $DEST_FOLDER/$DEST_MOUSE/$name/data/behavior_codes.txt

    done
done








