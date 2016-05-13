#!/bin/bash

IFS='
'
cd ../github-streak-result/

for file in `seq 1 365`; do

	echo "#####"
	echo $file
	echo "#####"

	#touch commit/$file.txt
	#git add commit/$file.txt

	COUNTER=1
	for date in `cat ../github-streak/file/$file.txt`; do
		echo $date

		GIT_AUTHOR_DATE=$date
		GIT_COMMITTER_DATE=$date

		printf "I'm awesome x$COUNTER - $date\n">>$file.txt

		git add $file.txt
		git commit --date $date -m "Test$COUNTER on $file.txt"

		let COUNTER=COUNTER+1

	done

done
