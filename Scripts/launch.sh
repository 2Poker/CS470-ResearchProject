#!/bin/bash

sbatch --gres=gpu ./runBF16.sh

sbatch --gres=gpu ./runFP16.sh

sbatch --gres=gpu ./runFP32.sh

sbatch --gres=gpu ./runFP64.sh

