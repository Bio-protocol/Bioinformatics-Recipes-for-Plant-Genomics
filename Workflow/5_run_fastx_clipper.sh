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


fastx_clipper -a AGATCGGAAGAGC -l 25 -d 0 -Q 33 -i Input/SRR2061397_1.fastq -o Output/Fastx/SRR2061397_1trimmed.fastq

#Parameter: -a for adapter string, -l for discard sequence shorter than N nucleotides. -d N keep the adapter and N bases after it. -i input file, -o output file.
