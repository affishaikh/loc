#!/bin/bash

allFiles=$(find . -name .git -prune -o -print)

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
