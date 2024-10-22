#!/bin/bash

# Get the phrases to replace from the arguments
PHRASE_PATTERN="$1"
REPLACEMENT_PHRASE="$2"

# Replace the pattern in all files in the repository
# -r flag for recursive, -i for in-place editing, -E for extended regex support
find . -type f -not -path "./.git/*" -exec sed -i -E "s/${PHRASE_PATTERN}/${REPLACEMENT_PHRASE}/g" {} +

# Rename files that have the pattern in their filename
for file in $(find . -type f -name "*${PHRASE_PATTERN}*" -not -path "./.git/*"); do
  newfile=$(echo "$file" | sed -E "s/${PHRASE_PATTERN}/${REPLACEMENT_PHRASE}/g")
  mv "$file" "$newfile"
done
