#!/bin/bash

	for i in /home/lier7407/genome_analysis/raw_data/rna_seq_data/raw/*.fastq.gz
	do
    		echo "Running $i ..."
    		fastqc -t 1 -o /home/lier7407/genome_analysis/01_preprocessing/results_fastqc_raw_rna "$i"
	done
