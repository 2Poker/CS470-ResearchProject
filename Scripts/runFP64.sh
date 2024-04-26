#!/bin/bash

#SBATCH --job-name=MM_DP
#SBATCH --output=MM_DP.txt
#SBATCH --time=1:00:00

cd ..

sizes=(10000 20000 30000 40000)

for size in "${sizes[@]}"
do
    ./MMFP64 $size
done