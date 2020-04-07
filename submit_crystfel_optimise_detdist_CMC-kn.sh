#!/bin/bash 

#USAGE: sh submit_cryst.... list-of-files geometry-file

na=$(echo "$1" | cut -f 1 -d '.')
ge=$(echo "$2" | cut -f 1 -d '.')

DETDISTMINUS=9405
DETDISTPLUS=9600



for len in `seq $DETDISTMINUS 5 $DETDISTPLUS`
	do 
		sed 's/clen.*/clen = 0.0'$len'/' $ge.geom > $ge-$len.geom 
	done

for filename in $ge-*.geom 
	do
    		sbatch -p hour <<EOF
#!/bin/bash
 
source /etc/scripts/mx_fel.sh
NPROC=$(grep proc /proc/cpuinfo | wc -l )

indexamajig -j \$NPROC -i $1 -g $filename -o $filename-$na.stream --indexing=xgandalf-latt-cell  --peaks=peakfinder8 --threshold=80 -p rho.cell --int-radius=3,4,5 --integration=rings-grad --max-res=3000 --min-snr=5 --tolerance=9,9,9,2,3,2 --no-retry --no-multi --check-peaks --min-pix-count=2 --local-bg-radius=4 > $filename.log 2>&1
EOF
	done

