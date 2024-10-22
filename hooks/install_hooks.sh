#!/bin/bash

# Ensure the script is executable
chmod +x ./hooks/pull_rename.sh

# Copy the hook to the local Git hooks directory
cp ./hooks/pull_rename.sh .git/hooks/pull_rename

echo "Git hooks installed successfully."
