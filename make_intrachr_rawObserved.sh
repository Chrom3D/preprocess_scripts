#!/bin/bash

CHRS=$(cut -f 1 $1)
is=( $CHRS )
N=$((${#is[@]}-1))


for i in $(seq 0 $N)
do
	chrI=${is[$i]}
	awk -v CHRI=$chrI '{if($1==CHRI && $4==CHRI) print $2 "\t" $5 "\t" $7}' $2 > intra_chr_RAWobserved/${chrI}_50kb.RAWobserved
done
