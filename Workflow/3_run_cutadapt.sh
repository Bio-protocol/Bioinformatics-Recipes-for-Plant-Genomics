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




cutadapt -a AGATCGGAAGAGC -A AGATCGGAAGAGC -q 30 -m 20 –trim-n -O 10 -o Output/cutadapt/SRR2061397_1trimmed.fastq -p Output/cutadapt/SRR2061397_2trimmed.fasq  Input/SRR2061397_1.fastq Input/SRR2061397_2.fastq

#Parameter description: -a for sequence of an adapter ligated to the 3’ end, -A 3’ adapter to be removed from second read in a pair, -q trim low-quality bases from 5’ and 3’ ends of each read. -m 20 for discard trimmed reads that are shorter than 20. -O MINLENGTH if the overlap between the read and the adapter is shorter than MINLENGTH, the read is not modified, reduces the number of bases trimmed due to random adapter match. -o output file -p paired-output.
