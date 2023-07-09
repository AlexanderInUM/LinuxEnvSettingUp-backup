#!/bin/bash


job_id=$1

# Check if there are no arguments provided
if [ -z "$job_id" ]; then
    echo "No arguments provided."
else
    srun --jobid=$job_id nvidia-smi
#    echo "Argument is: $job_id"
fi

