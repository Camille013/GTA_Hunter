#!/bin/bash
# 
# Name: xval.sh
# 
# Author: Taylor Neely
#
# Function: Batch xval over a variety
# of conditions
# 
# Input: None
#
# Notes:
#

# xval params
folds=10

# feature params
k=3
pseaac="-p"

# select training set
gtas=($(ls ../../data/2016-3-28/gta/6*gta.faa))
virals=($(ls ../../data/2016-3-28/viral/6*viral.faa))

# select weights
wgtas=($(ls ../../data/2016-3-28/gta/6*gta.dist))
wvirals=($(ls ../../data/2016-3-28/viral/6*viral.dist))

# confirm sets align
if [ ${#gtas[@]} == ${#virals[@]} ] && [ ${#wgtas[@]} == ${#wvirals[@]} ]
	then
	# test
	for i in "${!gtas[@]}"
	do
		# get files
		gta="${gtas[$i]}"
		wgta="${wgtas[$i]}"
		viral="${virals[$i]}"
		wviral="${wvirals[$i]}"
		# make sure numbers align
		gn=`echo $(basename "$gta") | cut -d "_" -f1`
		wgn=`echo $(basename "$wgta") | cut -d "_" -f1`
		vn=`echo $(basename "$viral") | cut -d "_" -f1`
		wvn=`echo $(basename "$wviral") | cut -d "_" -f1`
		if [ $gn == $vn ] && [ $gn == $wgn ] && [ $gn == $wvn ]
			then
			# define out by number
			echo "Starting gene $gn"
			out="../../data/results/2016-4-22/physicochem/"$gn"_xval.txt"
			echo > $out
			# set gta_tool params
			c=0.01
			d=0
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=0.1
			d=0
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=1
			d=0
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=100
			d=0
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=10000
			d=0
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=0.01
			d=0.01
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=0.1
			d=0.01
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=1
			d=0.01
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=100
			d=0.01
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=10000
			d=0.01
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=0.01
			d=0.02
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=0.1
			d=0.02
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=1
			d=0.02
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=100
			d=0.02
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=10000
			d=0.02
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=0.01
			d=0.03
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=0.1
			d=0.03
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=1
			d=0.03
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=100
			d=0.03
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=10000
			d=0.03
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=0.01
			d=0.04
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=0.1
			d=0.04
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=1
			d=0.04
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=100
			d=0.04
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=10000
			d=0.04
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=0.01
			d=0.05
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=0.1
			d=0.05
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=1
			d=0.05
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=100
			d=0.05
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=10000
			d=0.05
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=0.01
			d=0.1
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=0.1
			d=0.1
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=1
			d=0.1
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=100
			d=0.1
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			# set gta_tool params
			c=10000
			d=0.1
			# xval
			echo "Params:c=$c, d=$d, k=$k, folds=$folds" >> $out
			python ../GTA_Hunter.py -g $gta -v $viral -w $wgta $wviral -d $d -c $c -x $folds -k $k $pseaac -m >> $out
			
			echo "We good on gene $gn."
		else
			echo "No good! Gene numbers off (g=$gn, wg=$wgn, v=$vn, wv=$wvn)"
		fi

	done
else
	echo "Batch run cannot work, file numbers do not line up."
fi