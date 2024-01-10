#!/bin/bash
#SBATCH -p qTRDGPU
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mem=10G
#SBATCH -t 1:00:00
#SBATCH -e error%A_%a.err 
#SBATCH -o out%A_%a.out
#SBATCH -A trends53c17
#SBATCH --oversubscribe
#SBATCH -J cworkshop_pytorch_cv

# a small delay at the start often helps
sleep 10s 

# print some message to the log
eval "$(conda shell.bash hook)"
conda activate cw_torch

# CD into your directory
cd $MYDIR/ClusterWorkshop/Examples/PytorchClassification
# run the matlab batch script
python -u mnist_classification.py --k $SLURM_ARRAY_TASK_ID

# a delay at the end is also good practice
sleep 10s