#!/bin/bash

info() {
    echo "Usage:"
    echo "$0 filesdir searchstr"
    echo "  filesdir: path to a directory on the filesystem"
    echo "  searchstr: text string to search in filesdir"
    exit 1
}

# start verifying we get our 2 arguments
if [ $# -ne 2 ]
then
    info
fi

filesdir=$1
searchstr=$2

# verify that filesdir is a folder
if [ ! -x $filesdir ]
then
    info
fi

# count the number of files in the folder and store it into files variable
files=$(find $filesdir -type f | wc -l)
# count the number of grep references and store it into items variable
items=$(grep -r $searchstr $filesdir | wc -l)

# display the result in the expected format
echo "The number of files are $files and the number of matching lines are $items"
