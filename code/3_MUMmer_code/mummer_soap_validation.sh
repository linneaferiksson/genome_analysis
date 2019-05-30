#!/bin/bash -l


#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 24:00:00
#SBATCH -J soapdenovo_validation_wgs
#SBATCH --mail-type=ALL
#SBATCH --mail-user linneaferiksson@gmail.com


# Load modules
module load bioinfo-tools
module load MUMmer

# Your commands
nucmer --prefix 
/home/lier7407/genome_analysis/mummer/soapdenovo_assembly_validation\
/home/lier7407/genome_analysis/mummer/sel2_NW_015504334.fna \
/home/lier7407/genome_analysis/genome_assembly/output_soapdenovo.scafSeq

mummerplot -x "[0,4000000]" -y "[0,4000000]" --png --layout --filter -p \
/home/lier7407/genome_analysis/mummer/soapdenovo_assembly_validation \
/home/lier7407/genome_analysis/mummer/soapdenovo_assembly_validation.delta \
-R /home/lier7407/genome_analysis/mummer/sel2_NW_015504334.fna \
-Q /home/lier7407/genome_analysis/genome_assembly/output_soapdenovo.scafSeq

