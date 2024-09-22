#!/bin/bash

# Color codes
DIR_COLOR='\033[1;34m'
FILE_COLOR='\033[0;93m'
NO_COLOR='\033[0m'       # Reset color

# Run locate with case-insensitive search for the provided pattern
locate -i "$@" parent_directory | while read -r path; do
    if [ -d "$path" ]; then
        # Directory
        printf '\e]8;;file://%s\e\\%b%s%b\e]8;;\e\\\n' "$path" "$DIR_COLOR" "Directory: $path" "$NO_COLOR"
    else
        # File
        printf '\e]8;;file://%s\e\\%b%s%b\e]8;;\e\\\n' "$path" "$FILE_COLOR" "File: $path" "$NO_COLOR"
    fi
done
