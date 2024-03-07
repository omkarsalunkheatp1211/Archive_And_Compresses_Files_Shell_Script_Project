#!/bin/bash

# Variables
BASE="/Path"
DAYS=10
DEPTH=1
RUN=0

# Check if the directory is present or not
if [ ! -d "$BASE" ]; then
    echo "Directory does not exist: $BASE"
    exit 1
fi

# Create 'archive' folder if not present
if [ ! -d "$BASE/archive" ]; then
    mkdir "$BASE/archive"
fi

# Find the list of files larger than 20MB
# Use command substitution to get the list of files
# Enclose the find command in $() for command substitution
for i in $(find "$BASE" -maxdepth "$DEPTH" -type f -size +20M); do
    if [ $RUN -eq 0 ]; then
        echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
        gzip "$i" || exit 1
        mv "$i.gz" "$BASE/archive" || exit 1
    fi
done
