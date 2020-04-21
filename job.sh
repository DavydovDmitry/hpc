#!/bin/sh
export OMP_NUM_THREADS=8
cd ~/autoreg
for i in 1000 1500 2000 2500 3000
do
  exec 3<> autoreg.model
    echo "size_factor=1.4" >&3
    echo "zsize=($i,32,32)" >&3
    echo "zdelta=(1,1,1)" >&3
    echo "acf_size=(10,10,10)" >&3
  exec 3>&-
  source /etc/modules/hpc
  make
  ./autoreg
done