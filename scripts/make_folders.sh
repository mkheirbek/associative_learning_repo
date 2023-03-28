for fold in sepodor_pre sepodor_post innodor septune; do
    mkdir -p ../results/$1/$fold/data
    mkdir ../results/$1/$fold/notebooks
done
sourcefold=/home/fabios/data/dg_odor_nwoods/$1/sepodor/
datafold=../results/$1/sepodor_pre/data
cp $sourcefold/pre/traces/C.txt $datafold
cp $sourcefold/pre/tseries/tseries.xml $datafold
cp $sourcefold/pre/arduino/behavior_codes.txt $datafold
cp $sourcefold/pre/areas/A.txt $datafold
cp $sourcefold/pre/events/events.txt $datafold
datafold=../results/$1/sepodor_post/data
cp $sourcefold/post/traces/C.txt $datafold
cp $sourcefold/post/tseries/tseries.xml $datafold
cp $sourcefold/post/arduino/behavior_codes.txt $datafold
cp $sourcefold/post/areas/A.txt $datafold
cp $sourcefold/post/events/events.txt $datafold

mkdir ../results/$1/data
cp $sourcefold/cellreg/cellreg.txt ../results/$1/data

for nb in preprocessing psth selectivity; do
    cp ../results/calvin/sepodor_pre/notebooks/${nb}.ipynb ../results/$1/sepodor_pre/notebooks
    cp ../results/calvin/sepodor_pre/notebooks/${nb}.ipynb ../results/$1/sepodor_post/notebooks
done
