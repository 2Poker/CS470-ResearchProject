#!/bin/bash

#SBATCH --job-name=MM_DP
#SBATCH --output=MM_DP.txt
#SBATCH --time=1:00:00
#SBATCH --ntasks=4

cd ..

sizes=(10000 20000 30000 40000)
files=(./MMFP16 ./MMBF16 ./MMFP32 MMFP64)

for size in "${sizes[@]}"
do
    ./MMFP32 $size
done
