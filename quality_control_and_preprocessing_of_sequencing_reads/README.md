[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)

# Quality control and Preprocessing of Sequencing Reads

This protocal was used for sequencing data quality control and preprocessing. We showed how to use common tools in quality control and preprocessing of sequencing reads.

The specific purposes of the dir system were showed as follows:

  __1. Input__: We store the partial raw input for user to test the sample data quickly without additional data downloading.  The data in input directory are incomplete, user can download the complete data in Data access.
  
  __2. Output__: The final output results of each tools in workflow.
  
  __3. Workflow__: Step by step pipeline. 
  
  __4. README.md__: In readme file, user can learn basic information for data access and tool usages.
  
  __5. LICENSE__: The copyright file.


## Workflow

![](Workflow/workflow.svg)



## Data access

Here, we provide the sample data for quality control and preprocessing of sequencing reads, and the softwares used in pipeline were provided with their download links.
The complete smaple data can be accessed as follows:
[SRR2061397_1.fastq.gz](http://ftp.sra.ebi.ac.uk/vol1/fastq/SRR206/007/SRR2061397/SRR2061397_1.fastq.gz),
[SRR2061397_2.fastq.gz](http://ftp.sra.ebi.ac.uk/vol1/fastq/SRR206/007/SRR2061397/SRR2061397_2.fastq.gz), 
[SRR2061398_1.fastq.gz](http://ftp.sra.ebi.ac.uk/vol1/fastq/SRR206/008/SRR2061398/SRR2061398_1.fastq.gz), 
[SRR2061398_2.fastq.gz](http://ftp.sra.ebi.ac.uk/vol1/fastq/SRR206/008/SRR2061398/SRR2061398_2.fastq.gz). 

Those data are about Arabidopsis thaliana response to cytokinin in roots and shoots, which aims to identify genes which are differentially expressed in root and/or shoot material in response to exogenous cytokinin.pbaaims to identify genes which are differentially expressed in root and/or shoot material in response to exogenous cytokinin

## Prequisite softwares

The prequisite softwares can be obtained by visiting their released website. For example,
1. [__FastQC__](https://codeload.github.com/s-andrews/FastQC/zip/refs/heads/master)
2. [__iTools__](https://github.com/BGI-shenzhen/Reseqtools/blob/master/iTools_Code20180520.tar.gz)
3. [__Cutadapt__](https://codeload.github.com/jamescasbon/cutadapt/zip/refs/heads/master)
4. [__Fastp__](https://codeload.github.com/OpenGene/fastp/zip/refs/heads/master)
5. [__FASTX__](https://codeload.github.com/agordon/fastx_toolkit/zip/refs/heads/master)

User can install and use those softwares with linux-like system.

By integrating those softwares, we could finish the quality control and preprocessing for high-throughput data in multiple way. In addition, we provide the simple usage of those software for the users.

## Major steps

#### Step 1: running the FastQC to conduct quality checking

```
sh Workflow/1_run_fastqc.sh
```

#### Step2: running the iTools to conduct quality checking alternatively

```
sh Workflow/2_run_iTools.sh
```

#### Step3: running the Cutadapt to conduct read preprocessing (removing adapter)

```
sh Workflow/3_run_cutadapt.sh
```
#### Step4: run fastp to perform quality control, adapter trimming, quality filtering and per-read quality pruning

```
sh Workflow/4_run_fastp.sh fastp
```
#### Step 5: run fastx_clipper to remove adapter

```
sh Workflow/5_run_fastx_clipper.sh
```


## License
It is a free and open source software, licensed under []() (choose a license from the suggested list:  [GPLv3](https://github.com/github/choosealicense.com/blob/gh-pages/_licenses/gpl-3.0.txt), [MIT](https://github.com/github/choosealicense.com/blob/gh-pages/LICENSE.md), or [CC BY 4.0](https://github.com/github/choosealicense.com/blob/gh-pages/_licenses/cc-by-4.0.txt)).
