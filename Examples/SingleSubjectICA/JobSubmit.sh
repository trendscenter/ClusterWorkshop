#!/bin/bash
#SBATCH -p qTRD
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --mem=4G
#SBATCH -t 1:00:00
#SBATCH -e error%A.err 
#SBATCH -o out%A.out
#SBATCH -A trends53c17
#SBATCH --oversubscribe
#SBATCH -J cworkshop_multi_ica

# a small delay at the start often helps
sleep 10s 

# print some message to the log
module load matlab

# CD into your directory
cd $MYDIR/Examples/SingleSubjectICA
# run the matlab batch script
matlab -batch 'gigica_step2'

# a delay at the end is also good practice
sleep 10s