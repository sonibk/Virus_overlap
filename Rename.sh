#!/bin/bash

# Folder containing your .txt files
FOLDER=Immport_pathways  # replace with your actual folder name

# Loop through all .txt files in that folder
for file in "$FOLDER"/*.txt; do
    # Skip if no txt files are found
    [ -e "$file" ] || continue
    
    # Get the base name without extension
    base="${file%.txt}"
    
    # Rename the file
    mv "$file" "${base}.csv"
done

echo "All .txt files in $FOLDER renamed to .csv."

