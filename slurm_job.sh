#!/bin/bash -l
# NOTE the -l flag!
#
# If you need any help, please email rc-help@rit.edu
#


# Name of the job 
#SBATCH -J demo



# To send emails, set the adcdress below and remove one of the "#" signs.
# IMPORTANT : GIVES GPU FAILURE NOTIFICATIONS
#SBATCH --mail-user xxd9704@rit.edu
# notify on state change: BEGIN, END, FAIL or ALL
#SBATCH --mail-type=ALL


# run time request
# day-hour:minute:second
#SBATCH -t 5-0:0:0


# use the "demo" account, which corresponds to our registered project name
# put the job in the "tier3" partition
# -n 1 requests 1 CPUs
# --gres=gpu:p4:1 requests 0 Nvidia p4 GPU
#SBATCH -A demo -p tier3 -n 1 --gres=gpu:p4:0


# Job memory requirements in MB
# be generous, they have tons of RAM
# 1024 gives 1 Gig
#SBATCH --mem=1024


# Standard out and Standard Error output files
#SBATCH -o demo.out
#SBATCH -e demo.err


#
# Your job script goes below this line.  
# 
source ./venv/bin/activate
python sample.py

