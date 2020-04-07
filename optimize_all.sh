#!/bin/bash

for i in `cat runs-sorted.lst`
do
   STREAM=`basename $i`
   RUN=`basename $STREAM .stream`
   cd $RUN
   cp ../stdev .
   cp ../analyze_stdev.py .
   for s in `ls *.stream`
   do
      ./stdev $s
   done > out-geom-ref.txt
   python analyze_stdev.py $RUN
   #rm slurm* jf-*.log jf-*.geom > /dev/null 2>&1
   cd ..
done
