#!/bin/bash
# This short script demonstrates using the read tool along with the -p flag
# to prompt a user for input then echo that input concatenated into a single
# string with human-friendly fluffer content to stdin. Used as an example here:
# https://www.alpharithms.com/bash-concatenate-strings-045911/

# prompt user for 3 words
read -p "Enter 3 words: " w1 w2 w3

# send concatenated string to stdin
echo "Your words are: $w1, $w2, and $w3."
