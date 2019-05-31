#!/bin/bash 
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J batch_tophat_bowtie_output
#SBATCH --mail-type=ALL
#SBATCH --mail-user linneaferiksson@gmail.com

# Load modules
module load bioinfo-tools
module load tophat
module load bowtie2 

### really fast
#bowtie2-build -f /home/lier7407/genome_analysis/sel2_NW_015504334.fna /home/lier7407/genome_analysis/6_bowtie/sel2
###

tophat -o /home/lier7407/genome_analysis/7_tophat \
/home/lier7407/genome_analysis/6_bowtie/sel2 \
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719013.trim_1P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719014.trim_1P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719015.trim_1P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719016.trim_1P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719017.trim_1P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719018.trim_1P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719204.trim_1P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719206.trim_1P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719207.trim_1P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719208.trim_1P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719209.trim_1P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719211.trim_1P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719212.trim_1P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719213.trim_1P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719214.trim_1P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719241.trim_1P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719242.trim_1P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719013.trim_2P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719014.trim_2P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719015.trim_2P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719016.trim_2P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719017.trim_2P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719018.trim_2P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719204.trim_2P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719206.trim_2P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719207.trim_2P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719208.trim_2P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719209.trim_2P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719211.trim_2P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719212.trim_2P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719213.trim_2P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719214.trim_2P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719241.trim_2P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719242.trim_2P.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719013.trim_1U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719014.trim_1U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719015.trim_1U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719016.trim_1U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719017.trim_1U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719018.trim_1U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719204.trim_1U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719206.trim_1U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719207.trim_1U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719208.trim_1U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719209.trim_1U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719211.trim_1U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719212.trim_1U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719213.trim_1U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719214.trim_1U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719241.trim_1U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719242.trim_1U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719013.trim_2U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719014.trim_2U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719015.trim_2U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719016.trim_2U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719017.trim_2U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719018.trim_2U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719204.trim_2U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719206.trim_2U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719207.trim_2U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719208.trim_2U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719209.trim_2U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719211.trim_2U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719212.trim_2U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719213.trim_2U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719214.trim_2U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719241.trim_2U.fastq.gz,\
/home/lier7407/genome_analysis/raw_data/rna_seq_data/trimmed/sel2_SRR1719242.trim_2U.fastq.gz

