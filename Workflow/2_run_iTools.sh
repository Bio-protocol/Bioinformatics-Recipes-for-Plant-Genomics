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


iTools Fqtools stat -InFq Input/SRR2061397_1.fastq -InFq Input/SRR2061397_1.fastq -InFq Input/SRR2061398_1.fastq -InFq Input/SRR2061397_2.fastq -OutStat Output/iTools/read.info -CPU 8
