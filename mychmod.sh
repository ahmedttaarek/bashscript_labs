#!/bin/bash

echo "giving execute permission to all files and directories in home directory"

for item in "$HOME"/*; do
    if [ -f "$item" ] || [ -d "$item" ]; then
        chmod +x "$item"
        echo "Added execute permission to: $item"
    fi
done

echo "Execution complete."
