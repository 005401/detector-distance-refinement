adu_per_eV = 0.00011117
res = 13333.3  
clen = 0.09445
photon_energy = 11860.0
max_adu = 100000

dim0 = %
dim1 = ss
dim2 = fs
data = /data/data

;rigid_group_myrg = m7,m8,m11,m12,m15,m16,m19,m20
;rigid_group_collection_myrg = myrg 


rigid_group_m7 = m7
rigid_group_m8 = m8
rigid_group_m11 = m11
rigid_group_m12 = m12
rigid_group_m15 = m15
rigid_group_m16 = m16
rigid_group_m19 = m19
rigid_group_m20 = m20

rigid_group_collection_myrg = m7,m8,m11,m12,m15,m16,m19,m20

;mask_file = /sf/alvra/data/p18389/res/rho_valerie1/data/pixel_mask/run_000140.JF06T08V01.mask.h5 
mask_file = /das/work/p18/p18389/data/rho_valerie1/data/pixel_mask/run_000140.JF06T08V01.mask.h5 
mask = /mask
mask_good = 0x1
mask_bad = 0x0

;BOX_Top
badregionX/min_x = -58
badregionX/max_x = -10
badregionX/min_y = 000
badregionX/max_y = 200

;BOX_Bottom
badregionY/min_x = 10
badregionY/max_x = 55
badregionY/min_y = -200
badregionY/max_y = 0

;badregionA/min_x = -70
;badregionA/max_x = 90
;badregionA/min_y = 1040
;badregionA/max_y = 2060

;square in the center
badregionB/min_x = -90
badregionB/max_x = 90
badregionB/min_y = -90
badregionB/max_y = 90

;top lines from center
badregionC/min_x = -12
badregionC/max_x = -56
badregionC/min_y = -10
badregionC/max_y = 820

;bottom lines from center
badregionD/min_x = 55
badregionD/max_x = 13
badregionD/min_y = -810
badregionD/max_y = 20

;bad line in the upper left middle
badregionD/min_x = 129
badregionD/max_x = 139
badregionD/min_y = 420
badregionD/max_y = 550
 
m7/min_fs = 0.0
m7/min_ss = 0.0
m7/max_fs = 1029.0
m7/max_ss = 513.0
m7/fs = -0.000688x -1.000246y
m7/ss = -1.000222x +0.000720y
m7/corner_x = 1051.566618
m7/corner_y = 1062.983365
 
m8/min_fs = 0.0
m8/min_ss = 514.0
m8/max_fs = 1029.0
m8/max_ss = 1027.0
m8/fs = +0.000557x -1.000037y
m8/ss = -0.999893x -0.000322y
m8/corner_x = 1118.276618
m8/corner_y = 24.069165
 
m11/min_fs = 0.0
m11/min_ss = 1028.0
m11/max_fs = 1029.0
m11/max_ss = 1541.0
m11/fs = +0.000162x -1.000280y
m11/ss = -1.000604x -0.000165y
m11/corner_x = 501.021618
m11/corner_y = 1063.733365
 
m12/min_fs = 0.0
m12/min_ss = 1542.0
m12/max_fs = 1029.0
m12/max_ss = 2055.0
m12/fs = +0.000192x -0.999994y
m12/ss = -1.000470x -0.000174y
m12/corner_x = 568.716618
m12/corner_y = 24.244265
 
m15/min_fs = 0.0
m15/min_ss = 2056.0
m15/max_fs = 1029.0
m15/max_ss = 2569.0
m15/fs = +0.000147x -1.000316y
m15/ss = -0.999983x -0.000176y
m15/corner_x = -48.217282
m15/corner_y = 996.406365
 
m16/min_fs = 0.0
m16/min_ss = 2570.0
m16/max_fs = 1029.0
m16/max_ss = 3083.0
m16/fs = -0.000752x -1.000028y
m16/ss = -1.000016x +0.000705y
m16/corner_x = 19.762218
m16/corner_y = -42.805735
 
m19/min_fs = 0.0
m19/min_ss = 3084.0
m19/max_fs = 1029.0
m19/max_ss = 3597.0
m19/fs = +0.001019x -0.999997y
m19/ss = -0.998610x -0.000992y
m19/corner_x = -598.818382
m19/corner_y = 996.458365
 
m20/min_fs = 0.0
m20/min_ss = 3598.0
m20/max_fs = 1029.0
m20/max_ss = 4111.0
m20/fs = -0.000070x -0.999800y
m20/ss = -0.998970x -0.000181y
m20/corner_x = -530.018382
m20/corner_y = -42.654535
 

m7/coffset = -0.000018
m8/coffset = -0.000033
m11/coffset = 0.000015
m12/coffset = 0.000052
m15/coffset = 0.000062
m16/coffset = 0.000058
m19/coffset = 0.000011
m20/coffset = 0.000005

