#!/bin/bash

# Get the phrases to replace from the arguments
PHRASE_A="$1"
PHRASE_B="$2"
PHRASE_C="$3"

# Define the parent directory
TARGET_DIR=".."

# Print the received arguments for debugging
echo "Replacing all instances of '$PHRASE_A' and '$PHRASE_B' with '$PHRASE_C' in the parent directory"

# Replace in file contents in the parent directory
find "$TARGET_DIR" -type f \
  -not -path "$TARGET_DIR/.git/*" \
  -not -path "$TARGET_DIR/.github/*" \
  -not -path "$TARGET_DIR/scripts/*" \
  -not -path "$TARGET_DIR/hooks/*" \
  -exec sh -c '
    file="$1"
    echo "Processing file contents: $file"
    sed -i -E "s/${2}|${3}/${4}/g" "$file"
  ' sh {} "$PHRASE_A" "$PHRASE_B" "$PHRASE_C" \;

# Rename files and directories in the parent directory
find "$TARGET_DIR" -depth -type f \
  -not -path "$TARGET_DIR/.git/*" \
  -not -path "$TARGET_DIR/.github/*" \
  -not -path "$TARGET_DIR/scripts/*" \
  -not -path "$TARGET_DIR/hooks/*" | while IFS= read -r file; do
  newfile=$(echo "$file" | sed -E "s/${PHRASE_A}|${PHRASE_B}/${PHRASE_C}/g")

  # Only rename if the new filename is different
  if [ "$file" != "$newfile" ]; then
    mv "$file" "$newfile"
    echo "Renamed file: '$file' to '$newfile'"
  fi
done

# Final message
echo "Replaced all instances of '$PHRASE_A' and '$PHRASE_B' with '$PHRASE_C' in both file contents and filenames in the parent directory."
