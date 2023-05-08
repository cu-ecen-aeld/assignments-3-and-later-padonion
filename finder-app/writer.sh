#!/bin/bash

info() {
    echo "Usage:"
    echo "$0 writefile writestr"
    echo "  writefile: path of filename to be written"
    echo "  writestr: string to be written"
    exit 1
}

# verify that the arguments count is correct
if [ $# -ne 2 ]
then
    info
fi

# retrieve the arguments (optional but better for review)
writefile=$1
writestr=$2

# extract directory from writefile
folder=$(dirname "$writefile")

# create this folder (does not change existing one)
mkdir -p $folder

# store the writestr into writefile
echo "$writestr" > "$writefile"
