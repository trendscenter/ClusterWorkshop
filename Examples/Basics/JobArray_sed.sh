#!/bin/bash
#SBATCH -p qTRD
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --mem=1g
#SBATCH -p qTRD
#SBATCH -t 1:00:00
#SBATCH -J sed_example
#SBATCH -e error%A-%a.err
#SBATCH -o out%A-%a.out
#SBATCH -A trends53c17
#SBATCH --oversubscribe
sleep 10s
echo $HOSTNAME >&2
echo Array Index: $SLURM_ARRAY_TASK_ID
cd $MYDIR/projects/ClusterWorkshop/Examples/Basics

# this uses a bash trick to save the output from the sed command into a variable
lineFromFile=`sed -n "$(( $SLURM_ARRAY_TASK_ID + 1 )) p" lines.txt` 
echo $lineFromFile
sleep 10s

