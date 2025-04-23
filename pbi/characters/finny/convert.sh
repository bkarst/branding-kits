#!/bin/bash

# Loop through all PNG files in the current directory
for file in *.png; do
  # Skip if no PNG files are found
  [ -e "$file" ] || continue

  # Get the filename without extension
  base="${file%.*}"

  # Convert to WebP
  cwebp "$file" -o "${base}.webp"
  
  echo "Converted $file -> ${base}.webp"
done

