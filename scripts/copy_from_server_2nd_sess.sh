#!/bin/bash

# edit here:
DEST_FOLDER="/home/fabios/data/data/odor_ass_learning_2019/results/"

#MOUSE=('c10m6' 'dHPCg1')
#MOUSE=('C3M1' 'C3M2')

MOUSE=('C3M1' 'C3M2' 'C3F3' 'C3F2' 'C4M3' 'c10m8' '90' '91' '92' '93')

sides=('-')

#DEST_MOUSE=`echo "$MOUSE" | tr '[:upper:]' '[:lower:]'`

for ((j=0;i<${#MOUSE[@]};++j)); do
    printf "%s  " "$j"
    m=${MOUSE[j]}
    
    if [[ "$m" = "c10m8" ]]
    then
        days=('092119')
        GROUP='2019_Grp3'
        m_cor=$m
    elif [[ $m = 'C3M1' ]]
    then
        days=('050419')
        GROUP='2019_Grp2'
        m_cor=$m
    elif [[ $m = 'C3M2' ]]
    then
        days=('032219')
        GROUP='2019_Grp1'
        m_cor=$m
    elif [[ $m = 'C4M3' ]]
    then
        days=('050419')
        GROUP='2019_Grp2'
        m_cor=$m
    elif [[ $m = 'C3F2' ]]
    then
        days=('032219')
        GROUP='2019_Grp1'
        m_cor=$m
    elif [[ $m = 'C3F3' ]]
    then
        days=('032219')
        GROUP='2019_Grp1'
        m_cor=$m
    elif [[ $m = '91' ]]
    then
        days=("112019")
        GROUP='2019_Grp4'
        m_cor="${sides}${m}${sides}"
    elif [[ $m = '92' ]]
    then
        days=("112019")
        GROUP='2019_Grp4'
        m_cor="${sides}${m}${sides}"
    elif [[ $m = '93' ]]
    then
        days=("112019")
        GROUP='2019_Grp4'
        m_cor="${sides}${m}${sides}"
    elif [[ $m = '90' ]]
    then
        days=("011120")
        GROUP='2019_Grp5'
        m_cor="${sides}${m}${sides}"
    fi
    
   # session_names=('2_odor_expo' 'pre_1' 'pre_2' 'post' 'ext1' 'ext2' 'renew' '3odor_pre' '3odor_post' '3odor_pre_rev' '3odor_post_rev' '3odor_catch')
   
    session_names=('d2')

    DEST_MOUSE=`echo "$m" | tr '[:upper:]' '[:lower:]'`

    for ((i=0;i<${#days[@]};++i)); do
    #for d in 033019 041019 041119 041519 041619; do
        printf "%s is in %s\n" "${days[i]}" "${session_names[i]}"
        day=${days[i]}
        name=${session_names[i]}
        mkdir -p $DEST_FOLDER/$DEST_MOUSE/$name
        mkdir -p $DEST_FOLDER/$DEST_MOUSE/$name/data
        cp /home/fabios/server/Jeremy/Jeremy_2p_Data/$GROUP/$day/*$m_cor*/CN*onser*/*txt $DEST_FOLDER/$DEST_MOUSE/$name/data;
        cp /home/fabios/server/Jeremy/Jeremy_2p_Data/$GROUP/$day/*$m_cor*/CN*onser*/*mat $DEST_FOLDER/$DEST_MOUSE/$name/data;
        cp /home/fabios/server/Jeremy/Jeremy_2p_Data/$GROUP/$day/*$m_cor*/*.xml $DEST_FOLDER/$DEST_MOUSE/$name/data/tseries.xml;
        cp ~/data/data/Arduino\ Behavior/Associative\ Learning\ Round\ 2/$GROUP/$m*$day*_code*.txt $DEST_FOLDER/$DEST_MOUSE/$name/data/behavior_codes.txt

    done
done


















