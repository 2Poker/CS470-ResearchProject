#!/bin/bash

#SBATCH --job-name=MM_DPFP32
#SBATCH --output=MM_DPFP32.txt
#SBATCH --time=1:00:00
#SBATCH --ntasks=4


for i in 5000 10000 15000 20000 25000;
do
    ./MMFP32 $i
done
