#!/bin/bash

	for i in /home/lier7407/genome_analysis/01_preprocessing/results_trimmomatic_rna_raw/*.fq.gz
        do
          	echo "Running $i ..."
                fastqc -t 1 -o /home/lier7407/genome_analysis/01_preprocessing/results_trimmomatic_fastqc_rna_raw/ "$i"
        done

