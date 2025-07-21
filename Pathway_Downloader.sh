#!/bin/bash

# Path to your txt file containing the GO terms
GO_terms_file="diff_go.txt"

# Loop through each line in the GO terms file
while IFS= read -r go_term; do
    # Construct the URL
    url="https://s3.immport.org/release/genelists/current/$go_term.txt"
    
    # Download the file using curl
    curl "$url" -o "$go_term.txt"
    
    echo "Downloaded $go_term.txt"
done < "$GO_terms_file"


