#!/bin/bash

# Determine the current branch
current_branch=$(git rev-parse --abbrev-ref HEAD)

echo "Running post-merge hook for branch: $current_branch"

# Conditional logic based on the branch
if [ "$current_branch" == "ethan" ]; then
  echo "On ethan branch, running ethan-specific game rename..."
  ./scripts/rename_game.sh 'CompsSpadesD' 'CompsSpadesB'
elif [ "$current_branch" == "leo" ]; then
  echo "On leo branch, running leo-specific game rename..."
  ./scripts/rename_game.sh 'CompsSpadesD' 'CompsSpadesE'
elif [ "$current_branch" == "jon" ]; then
  echo "On jon branch, running jon-specific game rename..."
  ./scripts/rename_game.sh 'CompsSpadesD' 'CompsSpadesD'
elif [ "$current_branch" == "ugo" ]; then
  echo "On ugo branch, running ugo-specific game rename..."
  ./scripts/rename_game.sh 'CompsSpadesD' 'CompsSpadesD'
fi
