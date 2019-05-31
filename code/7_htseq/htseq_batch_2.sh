#!/bin/bash 
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J batch_htseq_output
#SBATCH --mail-type=ALL
#SBATCH --mail-user linneaferiksson@gmail.com
# Load modules
 
module load bioinfo-tools
module load htseq

 
# my .gff file had fasta appended at the end. (fasta started at line 9232)
# remove the fasta part and create a new file:
#head - 9231 /home/lier7407/genome_analysis/maker_outputs/sel2_NW_015504334_copy.all.gff  > /home/lier7407/genome_analysis/maker_outputs/sel2_NW_015504334_nofasta.all.gff

 
#for total counts
htseq-count -f bam -s no -t gene -i ID /home/lier7407/genome_analysis/7_tophat/Bam/accepted_hits.bam /home/lier7407/genome_analysis/maker_outputs/sel2_NW_015504334_nofasta.all.gff > /home/lier7407/genome_analysis/8_htseq/htseq_totalcount_results.txt

# cs15 + forelimb
htseq-count -f bam -s no -t gene -i ID /home/lier7407/genome_analysis/7_tophat/Bam/accepted_hits.bam /home/lier7407/genome_analysis/maker_outputs/sel2_NW_015504334_nofasta.all.gff > /home/lier7407/genome_analysis/8_htseq/cs15_fore_htseq_results.txt

# cs15 + hindlimb
htseq-count -f bam -s no -t gene -i ID /home/lier7407/genome_analysis/7_tophat/Bam/accepted_hits.bam /home/lier7407/genome_analysis/maker_outputs/sel2_NW_015504334_nofasta.all.gff > /home/lier7407/genome_analysis/8_htseq/cs15_hind_htseq_results.txt

# cs16 + forelimb
htseq-count -f bam -s no -t gene -i ID /home/lier7407/genome_analysis/7_tophat/Bam/accepted_hits.bam /home/lier7407/genome_analysis/maker_outputs/sel2_NW_015504334_nofasta.all.gff > /home/lier7407/genome_analysis/8_htseq/cs16_fore_htseq_results.txt

# cs16 + hindlimb
htseq-count -f bam -s no -t gene -i ID /home/lier7407/genome_analysis/7_tophat/Bam/accepted_hits.bam /home/lier7407/genome_analysis/maker_outputs/sel2_NW_015504334_nofasta.all.gff > /home/lier7407/genome_analysis/8_htseq/cs16_hind_htseq_results.txt

# cs17 + forelimb --> worked
htseq-count -f bam -s no -t gene -i ID /home/lier7407/genome_analysis/7_tophat/Bam/accepted_hits.bam /home/lier7407/genome_analysis/maker_outputs/sel2_NW_015504334_nofasta.all.gff > /home/lier7407/genome_analysis/8_htseq/cs17_fore_htseq_results.txt

# cs17 + hindlimb
htseq-count -f bam -s no -t gene -i ID /home/lier7407/genome_analysis/7_tophat/Bam/accepted_hits.bam /home/lier7407/genome_analysis/maker_outputs/sel2_NW_015504334_nofasta.all.gff > /home/lier7407/genome_analysis/8_htseq/cs17_hind_htseq_results.txt