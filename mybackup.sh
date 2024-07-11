#!/bin/bash

echo "Creating a backup of files in your home directory..."

backup_dir="$HOME/backup_files"
mkdir -p "$backup_dir"

for file in "$HOME"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        backup_file="$backup_dir/$filename.backup"
        cp "$file" "$backup_file"
        echo "Backup created for: $file"
    fi
done

echo "Backup process complete."
