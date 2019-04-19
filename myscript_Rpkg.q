#!/bin/bash
#
#SBATCH --job-name=myjobR
#SBATCH --mail-user=kk319@duke.edu
#SBATCH --mail-type=END,FAIL
#SBATCH --mem=1024
#SBATCH --time=03:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --output=slurm-R-job-%J.stdout
#SBATCH --error=slurm-R-job-%J.stderr


module load R/3.5.2

R CMD BATCH mytestRpkg.R

module unload R/3.5.2
