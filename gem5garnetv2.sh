# -----------------------------------------------------------------------------
# Project name   :
# File name      : gem5garnet20.sh
# Created date   : Th01 18 2018
# Author         : Van-Nam DINH
# Last modified  : Th01 18 2018 09:12
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

#i1=0.01
#i2=0.05
#i3=0.1
#i4=0.2
#i5=0.3
#i6=0.32
#i7=0.34
#i8=0.35
#i9=0.4
#i10=0.45
#i11=0.5
#i12=0.55
#i13=0.6
#i14=0.65
#i15=0.7
#i16=0.75
#i17=0.8
#i18=0.85
#i19=0.9
#i20=0.95
#i21=1.0
#syn1=uniform_random
#syn2=tornado
#syn3=bit_complement
#syn4=bit_reverse
#syn5=bit_rotation
#syn6=neighbor
#syn7=shuffle
#syn8=transpose
scons build/NULL/gem5.debug PROTOCOL=Garnet_standalone
for synth in uniform_random tornado
do
for injectionrate in 0.01 0.5
do
./build/NULL/gem5.debug configs/example/garnet_synth_traffic.py  \
	--num-cpus=16 \
	--num-dirs=16 \
	--network=garnet2.0 \
	--topology=Mesh_XY \
	--mesh-rows=4  \
	--sim-cycles=100000 \
	--synthetic=$synth \
	--injectionrate=$injectionrate
mv m5out/ m5out$injectionrate$synth/
done
done

