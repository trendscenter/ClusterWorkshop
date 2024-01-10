#!/bin/bash
#SBATCH -p qTRD
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --mem=10G
#SBATCH -t 1:00:00
#SBATCH -A trends53c17
#SBATCH --oversubscribe
#SBATCH -J cw_ex_args
# a small delay at the start often helps
sleep 10s 

# print some message to the log
echo “hello sbatch world!”

echo We got some arguments $1 $2 $3

# it can be helpful for debugging to get the node name
echo $HOSTNAME >&2 
# a delay at the end is also good practice
sleep 10s
