#!/bin/bash
#SBATCH -p qTRDGPU
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 8
#SBATCH --gres=gpu:2
#SBATCH --mem=20G
#SBATCH -t 1:00:00
#SBATCH -e error%A.err 
#SBATCH -o out%A.out
#SBATCH -A trends53c17
#SBATCH --oversubscribe
#SBATCH -J cworkshop_pytorch

# a small delay at the start often helps
sleep 10s 

# print some message to the log
eval "$(conda shell.bash hook)"
conda activate cw_torch

# CD into your directory
cd $MYDIR/ClusterWorkshop/Examples/ExtraCredit/MultiGPUPytorch
# run the matlab batch script
python -u dataparallel.py

# a delay at the end is also good practice
sleep 10s