#!/bin/bash

# Function to convert binary file to hex
binary_to_hex() {
    local binary_file=$1
    local hex_file="${binary_file}.hex"
    
    # Convert binary to hex
    xxd -p "$binary_file" > "$hex_file"
    
    echo "Converted $binary_file to hex format: $hex_file"
}

# Function to convert hex file back to binary
hex_to_binary() {
    local hex_file=$1
    local binary_file="${hex_file%.hex}.bin"
    
    # Convert hex back to binary
    xxd -r -p "$hex_file" > "$binary_file"
    
    echo "Converted $hex_file back to binary format: $binary_file"
}

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <bin2hex|hex2bin> <file>"
    exit 1
fi

# Execute the appropriate function based on the first argument
if [ "$1" == "bin2hex" ]; then
    binary_to_hex "$2"
elif [ "$1" == "hex2bin" ]; then
    hex_to_binary "$2"
else
    echo "Invalid option. Use 'bin2hex' or 'hex2bin'."
    exit 1
fi

