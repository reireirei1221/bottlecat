#!/bin/sh
#SBATCH -p v
#SBATCH --gres=gnu:1
export PATH=/usr/local/cuba/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuba/lib64:$LD_LIBRARY_PATH

python3 train.py --experiment_dir experiment --experiment_id 0 --batch_size 8 --lr 0.001 --epoch 200 --sample_steps 50 --schedule 20 --L1_penalty 100 --Lconst_penalty 15