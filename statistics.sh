#!/bin/sh

if [ $# != 3 ]
then
    echo "Usage  : $0 HKLFILE RESOLUTION POINT_GROUP"
    echo "Example: $0 detwinned.hkl 2.25 mmm"
    echo "Output : statistics_HKLFILE.dat"
    exit
fi 

HKLFILE=$1
RESO=$2
POINT_GROUP=$3

CELLFILE=rho.cell

check_hkl ${HKLFILE} -y ${POINT_GROUP} -p ${CELLFILE} --highres=${RESO}
mv shells.dat check.dat
compare_hkl  ${HKLFILE}1 ${HKLFILE}2 -y ${POINT_GROUP} -p ${CELLFILE} --highres=${RESO} --fom=rsplit
mv shells.dat rsplit.dat
compare_hkl ${HKLFILE}1 ${HKLFILE}2 -y ${POINT_GROUP} -p ${CELLFILE} --highres=${RESO} --fom=ccstar
mv shells.dat ccstar.dat
compare_hkl ${HKLFILE}1 ${HKLFILE}2 -y ${POINT_GROUP} -p ${CELLFILE} --highres=${RESO} --fom=cc
mv shells.dat cc.dat
cat rsplit.dat ccstar.dat cc.dat check.dat > statistics_${HKLFILE}.dat
rm rsplit.dat ccstar.dat cc.dat check.dat
