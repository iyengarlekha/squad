#!/bin/bash

#SBATCH --job-name=bidaf_orig
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=20GB
#SBATCH --gres=gpu
#SBATCH --time=16:00:00
#SBATCH --output=logs/bidaf_orig_slurm_%j.out
#SBATCH --mail-type=END
#SBATCH --mail-user=li471@nyu.edu

conda init bash
conda activate squad 
python train.py -n BiDAF_char
