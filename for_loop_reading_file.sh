#!/bin/bash

# File: for_loop_reading_file.sh

echo "Reading from a file:"

# Create a file with names if it doesn't exist
if [ ! -f names.txt ]; then
    echo -e "Alice\nBob\nCharlie" > names.txt
fi

for name in $(cat names.txt)
do
    echo "Name: $name"
done
