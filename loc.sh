#!/bin/bash

allFiles=$(find .)

allLineCounts=""
delimeter=""
for file in $allFiles
do
    if [ -f $file ]; then
        oneLine=$(wc -l $file | sed "s/^ *//g")
        allLineCounts="${allLineCounts}${delimeter}${oneLine}"
        delimeter="\n"
    fi
done

echo -e "$allLineCounts" | sort -rn
