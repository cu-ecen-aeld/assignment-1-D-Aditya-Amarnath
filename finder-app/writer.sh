#!/bin/sh

# Accepting runtime arguments
if [ "$#" -ne 2 ]; then
    echo "Error: Please provide two arguments - full file path and text string which will be written within this file."
    exit 1
fi

writefile="$1"
writestr="$2"

#Creating the directory if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Writing the text to the file
echo "$writestr" > "$writefile"

# Checking if the file was created successfully
if [ ! -f "$writefile" ]; then
    echo "Error: Failed to create the file $writefile."
    exit 1
fi
