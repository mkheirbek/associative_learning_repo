#/bin/bash

folder=$1
mkdir -p $folder/bkp
for file in $folder/*ipynb; do
    fileout=`basename $file`
    rsync -urt $folder/$fileout $folder/bkp/`echo $fileout | sed -e 's/\.ipynb//g'`_`date +"%Y%m%d_%H%M%S"`.ipynb;
done
