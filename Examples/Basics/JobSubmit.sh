#!/bin/bash
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --mem=10G
#SBATCH -t 1:00:00
#SBATCH -e error%A.err 
#SBATCH -o out%A.out
#SBATCH -A trends53c17
#SBATCH --mail-type=ALL
#SBATCH --mail-user=<your email>
#SBATCH --oversubscribe
# a small delay at the start often helps
sleep 10s 

# print some message to the log
echo “hello sbatch world!”

# it can be helpful for debugging to get the node name
echo $HOSTNAME >&2 
# a delay at the end is also good practice
sleep 10s
