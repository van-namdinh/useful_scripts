# -----------------------------------------------------------------------------
# Project name   :
# File name      : data_extract.sh
# Created date   : Th01 20 2018
# Author         : Van-Nam DINH
# Last modified  : Th01 20 2018 15:14
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash


i1=0.01
i2=0.05
i3=0.1
i4=0.2
i5=0.3
i6=0.32
i7=0.34
i8=0.35
i9=0.4
i10=0.45
i11=0.5
i12=0.55
i13=0.6
i14=0.65
i15=0.7
i16=0.75
i17=0.8
i18=0.85
i19=0.9
i20=0.95
i21=1.0
syn1=uniform_random
syn2=tornado
syn3=bit_complement
syn4=bit_reverse
syn5=bit_rotation
syn6=neighbor
syn7=shuffle
syn8=transpose
for b in $syn1 $syn2 $syn3 $syn4 $syn5 $syn6 $syn7 $syn8
do
	for a in $i1 $i2 $i3 $i4 $i5 $i6 $i7 $i8 $i9 $i10 $i11 $i12 $i13 $i14 $i15 \
					$i16 $i17 $i18 $i19 $i20 $i21
do
	cat m5out$b$a/stats.txt | grep average_flit_latency
done
echo "Done with the interesting things of m5out$b"
done
