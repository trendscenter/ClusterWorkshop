#!/bin/bash
#SBATCH -p qTRD
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --mem=1g
#SBATCH -p qTRD
#SBATCH -t 1:00:00
#SBATCH -J basic_array
#SBATCH -e error%A-%a.err
#SBATCH -o out%A-%a.out
#SBATCH -A trends53c17
#SBATCH --oversubscribe
sleep 10s
echo $HOSTNAME >&2
echo Array Index: $SLURM_ARRAY_TASK_ID
sleep 10s
