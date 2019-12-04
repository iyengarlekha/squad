#!/bin/bash

#SBATCH --job-name=squad_test_dev
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=16GB
#SBATCH --gres=gpu
#SBATCH --time=48:00:00
#SBATCH --mem=16GB
#SBATCH --output=logs/slurm_%j.out
#SBATCH --mail-type=END
#SBATCH --mail-user=li471@nyu.edu

conda init bash
conda activate squad
python test.py --split dev --load_path ../squad/best.pth.tar --name baseline

