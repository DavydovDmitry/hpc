#!/bin/sh
export OMP_NUM_THREADS=8
cd ~/autoreg
source /etc/modules/hpc
make
./autoreg