#!/bin/bash

# Function to compress images in a folder
compress_images() {
    local input_folder="$1"
    local target_size_KB="$2"

    for file in "$input_folder"/*.{jpg,jpeg,png}; do
        if [ -f "$file" ]; then
            echo -e "\e[1;34mProcessing $file\e[0m"

            filename=$(basename "$file")
            extension="${filename##*.}"
            filename="${filename%.*}"
            compressed_filename="${filename}_compressed.$extension"  # Include extension in the compressed filename

            # Compress the image
            convert "$file" -resize 50% -quality 85% "$input_folder/$compressed_filename"

            # Calculate compressed file size
            compressed_size=$(stat -c "%s" "$input_folder/$compressed_filename")

            echo -e "\e[1;32mCompressed $file (Output: $input_folder/$compressed_filename)\e[0m"

            # Check if compressed file size is within target size
            target_size=$((target_size_KB * 1024))  # Convert KB to bytes
            if [ "$compressed_size" -gt "$target_size" ]; then
                echo -e "\e[1;33mWarning: Compressed file size is larger than target size!\e[0m"
            fi
        fi
    done
}

# Usage
if [ "$#" -ne 2 ]; then
    echo -e "\e[1;31mUsage: $0 <input_folder> <target_size_KB>\e[0m"
    exit 1
fi

input_folder="$1"
target_size_KB="$2"

compress_images "$input_folder" "$target_size_KB"

echo -e "\e[1;36mCompression completed.\e[0m"
