#!/usr/bin/env bash

# Navigate to the root of the repo (optional: if script is inside the repo)
cd "$(git rev-parse --show-toplevel)" || exit 1

# Loop through all top-level entries
for entry in *; do
  if [ -d "$entry" ]; then
    echo "Stowing: $entry"
    stow -t "$HOME" "$entry"
  fi
done
