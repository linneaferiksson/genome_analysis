#!/bin/bash 
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 30:00:00
#SBATCH -J batch_maker2_augustus_output
#SBATCH --mail-type=ALL
#SBATCH --mail-user linneaferiksson@gmail.com
# Load modules
module load bioinfo-tools samtools
module load maker
# Your commands
maker

