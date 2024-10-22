#!/bin/bash

# Get the phrases to replace from the arguments
PHRASE1="$1"
PHRASE2="$2"
REPLACEMENT_PHRASE="$3"

# Print the received arguments for debugging
echo "Replacing '$PHRASE1' and '$PHRASE2' with '$REPLACEMENT_PHRASE'"

# Replace the patterns in all files in the repository,
# excluding the .git, script, and hooks directories.
# -r flag for recursive, -i for in-place editing, -E for extended regex support
find . -type f \
  -not -path "./.git/*" \
  -not -path "./.github/*" \
  -not -path "./scripts/*" \
  -not -path "./hooks/*" \
  -exec sed -i -E "s/($PHRASE1|$PHRASE2)/$REPLACEMENT_PHRASE/g" {} +

# Rename files that have the pattern in their filename,
# excluding the .git, script, and hooks directories.
for file in $(find . -type f \
  -name "*$PHRASE1*" \
  -not -path "./.git/*" \
  -not -path "./.github/*" \
  -not -path "./scripts/*" \
  -not -path "./hooks/*"); do
  newfile=$(echo "$file" | sed -E "s/($PHRASE1|$PHRASE2)/$REPLACEMENT_PHRASE/g")
  mv "$file" "$newfile"
done 

echo "Replaced all instances of '$PHRASE1' and '$PHRASE2' with '$REPLACEMENT_PHRASE' in file contents and filenames, ignoring specified directories."
