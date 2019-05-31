#!/bin/bash 
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 30:00:00
#SBATCH -J batch_htseq_output
#SBATCH --mail-type=ALL
#SBATCH --mail-user linneaferiksson@gmail.com
# Load modules
 
module load bioinfo-tools
module load htseq

 
# my .gff file had fasta appended at the end. (fasta started at line 9232)
# remove the fasta part and create a new file:
head - 9231 /home/lier7407/genome_analysis/maker_outputs/sel2_NW_015504334_copy.all.gff  > /home/lier7407/genome_analysis/maker_outputs/sel2_NW_015504334_nofasta.all.gff

 
#for total counts
htseq-count -f bam -s no -t gene -i ID /home/lier7407/genome_analysis/7_tophat/Bam/accepted_hits.bam /home/lier7407/genome_analysis/maker_outputs/sel2_NW_015504334_copy.all.gff/sel2_NW_015504334_nofasta.all.gff > /home/lier7407/genome_analysis/8_htseq/htseq_results.txt

