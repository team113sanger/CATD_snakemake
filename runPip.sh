#!/bin/bash

#BSUB -n 64
#BSUB -M 204800
#BSUB -R "rusage[mem=204800]"
#BSUB -o "pipOut.log"
#BSUB -J "runPip"



source /nfs/research/irene/ozgurb/soft/mambaforge/etc/profile.d/conda.sh
conda activate snakemake
snakemake \
	--use-conda \
	--cores 64 \
	--conda-frontend mamba