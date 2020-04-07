#!/bin/bash


./create-xscale rho3-all-xsphere.hkl > XDS_ASCII.HKL


xscale_par
xdsconv

f2mtz HKLOUT temp.mtz<F2MTZ.INP
cad HKLIN1 temp.mtz HKLOUT XSCALE.mtz<<EOF
 LABIN FILE 1 ALL
 DWAVELENGTH FILE 1 1    1.09482
 END
EOF


