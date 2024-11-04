#!/bin/bash
###SBATCH --account=hologenomics         # Project Account
####SBATCH --partition=hologenomics
#SBATCH --mem 256M
#SBATCH -c 1
#SBATCH -t 24:00:00
#SBATCH -J 00Awget
#SBATCH -o stdout.txt
#SBATCH -e stderr.txt

echo "hvis denne linje ender i stderr eller stdout, er det lykkedes at submitte et job i slurm"
##wget https://path_to_yout_remote_zipfile.zip
 
module load tools
module load tools computerome_utils/2.0
module load miniconda3/23.5.0
module load gcc/12.2.0
module load intel/basekit/INITIALIZE/2023.0.0
module load intel/basekit/mkl/2023.0.0
module load R/4.4.0




