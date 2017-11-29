#!/bin/bash

base=$1
CHRS=$(cut -f 1 $2)
res=$3
is=( $CHRS )
N=$((${#is[@]}-1))


for i in $(seq 0 $N)
do
  chrI=${is[$i]}
  bash make_NCHG_input.sh ${base}.${chrI}.domains intra_chr_RAWobserved/${chrI}_${res}.RAWobserved ${chrI} > intrachr_bedpe/${chrI}_${res}.domains.RAW.bedpe
done
