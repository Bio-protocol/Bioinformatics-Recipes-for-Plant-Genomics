#!/bin/sh


####################################
# normalize your dir to the root level of the repo
function canonicalPath
{
    local path="$1" ; shift
    if [ -d "$path" ]
    then
        echo "$(cd "$path" ; pwd)"
    else
        local b=$(basename "$path")
        local p=$(dirname "$path")
        echo "$(cd "$p" ; pwd)/$b"
    fi
}
####################################
# usage example
mycanonicalpath=$(canonicalPath "$../")


fastp -i Input/SRR2061397_1.fastq -I Input/SRR2061397_2.fastq -o Output/fastp/SRR2061397_1clean.fastq -O Output/fastp/SRR2061397_2clean.fastq
