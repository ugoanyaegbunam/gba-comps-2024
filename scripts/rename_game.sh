#!/bin/bash

# Get the phrases to replace from the arguments
PHRASE_A="$1"
PHRASE_B="$2"
PHRASE_C="$3"

# Define the parent directory from argument
TARGET_DIR="$4"

# Print the received arguments for debugging
echo "Replacing all instances of '$PHRASE_A' and '$PHRASE_B' with '$PHRASE_C' starting from the '$TARGET_DIR' directory"

# Replace in file contents starting from the parent directory, ensuring excluded directories are not processed
find "$TARGET_DIR" -type f \
  \( -path "$TARGET_DIR/.git/*" -o -path "$TARGET_DIR/.github/*" -o -path "$TARGET_DIR/scripts/*" -o -path "$TARGET_DIR/hooks/*" \) -prune -o \
  -type f -exec sh -c '
    file="$1"
    echo "Processing file contents: $file"
    sed -i -E "s/${2}|${3}/${4}/g" "$file"
  ' sh {} "$PHRASE_A" "$PHRASE_B" "$PHRASE_C" \;

# Rename files and directories starting from the parent directory, ensuring excluded directories are not processed
find "$TARGET_DIR" -depth -type f \
  \( -path "$TARGET_DIR/.git/*" -o -path "$TARGET_DIR/.github/*" -o -path "$TARGET_DIR/scripts/*" -o -path "$TARGET_DIR/hooks/*" \) -prune -o \
  -type f -exec sh -c '
    file="$1"
    newfile=$(echo "$file" | sed -E "s/${2}|${3}/${4}/g")
    # Only rename if the new filename is different
    if [ "$file" != "$newfile" ]; then
      mv "$file" "$newfile"
      echo "Renamed file: $file to $newfile"
    fi
  ' sh {} "$PHRASE_A" "$PHRASE_B" "$PHRASE_C" \;

# Final message
echo "Replaced all instances of '$PHRASE_A' and '$PHRASE_B' with '$PHRASE_C' in both file contents and filenames starting from the parent directory."
