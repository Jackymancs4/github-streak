#!/bin/bash

IFS='
'

	file="365.txt"

	echo "#####"
	echo $file
	echo "#####"

	touch commit/$file
	git add commit/$file

	COUNTER=1
	for date in `cat file/$file`; do
		echo $date

		GIT_AUTHOR_DATE=$date
		GIT_COMMITTER_DATE=$date

		printf "I'm awesome x$COUNTER - $date\n">>commit/$file

		git add commit/$file
		git commit --date $date -m "Test$COUNTER on $file"

		let COUNTER=COUNTER+1

	done
