#!/bin/sh

for j in {1..100}
do
	cp code/crc_reference_run_reduced_feature_RF.R code/reduced_crc/crc_reduced_run_${j}_RF.R
	sed -i -e "s/i\s=\s1/i = ${j}/g" code/reduced_crc/crc_reduced_run_${j}_RF.R
done