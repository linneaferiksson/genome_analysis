#!/bin/bash

	for i in /home/lier7407/genome_analysis/raw_data/wgs_data/*.fastq.gz
	do
    		echo "Running $i ..."
    		fastqc -t 1 -o /home/lier7407/genome_analysis/01_preprocessing/results_fastqc_wgs "$i"
	done
