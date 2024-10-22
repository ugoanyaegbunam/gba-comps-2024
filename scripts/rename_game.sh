#!/bin/bash

# Get the phrases to replace from the arguments
PHRASE_PATTERN="$1"
REPLACEMENT_PHRASE="$2"

# Replace the pattern in all files in the repository,
# excluding the .git, script, and hooks directories.
# -r flag for recursive, -i for in-place editing, -E for extended regex support
find . -type f \
  -not -path "./.git/*" \
  -not -path "./.github/*" \
  -not -path "./scripts/*" \
  -not -path "./hooks/*" \
  -exec sed -i -E "s/\b${PHRASE_PATTERN}\b/${REPLACEMENT_PHRASE}/g"

# Rename files that have the pattern in their filename,
# excluding the .git, script, and hooks directories.
for file in $(find . -type f \
  -name "*${PHRASE_PATTERN}*" \
  -not -path "./.git/*" \
  -not -path "./.github/*" \
  -not -path "./scripts/*" \
  -not -path "./hooks/*"); do
  newfile=$(echo "$file" | sed -i -E "s/\b${PHRASE_PATTERN}\b/${REPLACEMENT_PHRASE}/g")
  mv "$file" "$newfile"
done 

echo "Replaced '${PHRASE_PATTERN}' with '${REPLACEMENT_PHRASE}' in file contents and filenames, ignoring specified directories."
