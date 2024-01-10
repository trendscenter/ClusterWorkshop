#!/bin/bash
#SBATCH -N 2
#SBATCH -n 2
#SBATCH -c 10
#SBATCH --mem=100g
#SBATCH -p qTRD
#SBATCH -t 1440
#SBATCH -J granulartest
#SBATCH -e error%A.err
#SBATCH -o out%A.out
#SBATCH -A trends53c17
#SBATCH --oversubscribe

sleep 10s

echo $HOSTNAME >&2 

module load matlab/R2022a
srun -N1 -n1 numactl --localalloc echo "hello node1" &
srun -N1 -n1 numactl --localalloc echo "hello node2" &

wait

sleep 10s