#!/bin/sh

submission="crc_run_100_RF.pbs crc_run_10_RF.pbs crc_run_11_RF.pbs crc_run_12_RF.pbs 
crc_run_13_RF.pbs crc_run_14_RF.pbs crc_run_15_RF.pbs crc_run_16_RF.pbs crc_run_17_RF.pbs 
crc_run_18_RF.pbs crc_run_19_RF.pbs crc_run_1_RF.pbs crc_run_20_RF.pbs crc_run_21_RF.pbs 
crc_run_22_RF.pbs crc_run_23_RF.pbs crc_run_24_RF.pbs crc_run_25_RF.pbs crc_run_26_RF.pbs 
crc_run_27_RF.pbs crc_run_28_RF.pbs crc_run_29_RF.pbs crc_run_2_RF.pbs crc_run_30_RF.pbs 
crc_run_31_RF.pbs crc_run_32_RF.pbs crc_run_33_RF.pbs crc_run_34_RF.pbs crc_run_35_RF.pbs 
crc_run_36_RF.pbs crc_run_37_RF.pbs crc_run_38_RF.pbs crc_run_39_RF.pbs crc_run_3_RF.pbs 
crc_run_40_RF.pbs crc_run_41_RF.pbs crc_run_42_RF.pbs crc_run_43_RF.pbs crc_run_44_RF.pbs 
crc_run_45_RF.pbs crc_run_46_RF.pbs crc_run_47_RF.pbs crc_run_48_RF.pbs crc_run_49_RF.pbs 
crc_run_4_RF.pbs crc_run_50_RF.pbs crc_run_51_RF.pbs crc_run_52_RF.pbs crc_run_53_RF.pbs 
crc_run_54_RF.pbs crc_run_55_RF.pbs crc_run_56_RF.pbs crc_run_57_RF.pbs crc_run_58_RF.pbs 
crc_run_59_RF.pbs crc_run_61_RF.pbs crc_run_62_RF.pbs crc_run_63_RF.pbs crc_run_64_RF.pbs 
crc_run_65_RF.pbs crc_run_66_RF.pbs crc_run_67_RF.pbs crc_run_68_RF.pbs crc_run_69_RF.pbs 
crc_run_6_RF.pbs crc_run_70_RF.pbs crc_run_71_RF.pbs crc_run_72_RF.pbs crc_run_73_RF.pbs 
crc_run_74_RF.pbs crc_run_75_RF.pbs crc_run_5_RF.pbs crc_run_76_RF.pbs crc_run_77_RF.pbs 
crc_run_78_RF.pbs crc_run_79_RF.pbs crc_run_7_RF.pbs crc_run_80_RF.pbs crc_run_81_RF.pbs 
crc_run_82_RF.pbs crc_run_60_RF.pbs crc_run_83_RF.pbs crc_run_84_RF.pbs crc_run_85_RF.pbs 
crc_run_86_RF.pbs crc_run_87_RF.pbs crc_run_88_RF.pbs crc_run_89_RF.pbs crc_run_8_RF.pbs 
crc_run_90_RF.pbs crc_run_91_RF.pbs crc_run_92_RF.pbs crc_run_93_RF.pbs crc_run_94_RF.pbs 
crc_run_95_RF.pbs crc_run_96_RF.pbs crc_run_97_RF.pbs crc_run_98_RF.pbs crc_run_99_RF.pbs 
crc_run_9_RF.pbs"

x=1

for s in ${submission}
do
	if [ $(( $x % 2)) -eq 0 ]; then
		
		qsub -W depend=afterok:$run_job code/full/$s
	else
		run_job=`qsub code/full/$s`
	fi
	
	x=`expr $x + 1`
	sleep 1

done