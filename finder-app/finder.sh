#!/bin/sh

# Accepting runtime arguments
if [ "$#" -ne 2 ]; then
    echo "Error: Please provide two arguments - directory path and search string."
    exit 1
fi

filesdir="$1"
searchstr="$2"

# Checking if directory exists
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir does not represent a directory on the file system."
    exit 1
fi

# Finding number of files and number of matching lines
num_files=$(find "$filesdir" -type f | wc -l)
num_matching_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Printing the result
echo "The number of files are $num_files and the number of matching lines are $num_matching_lines."

