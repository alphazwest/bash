#!/bin/bash
# This script demonstrates how to use a while loop to selectively send
# the first 10 words of a sentence to stdin. Used as an example in here:
# https://www.alpharithms.com/bash-concatenate-strings-045911/

# define a sentence
text="The only investors that don’t need to diversify are those that are right 100% of the time."

# creates an array of text
text_array=($text)

# init an output variable and counter
output=''
count=1

# get words until
while [[ $count -lt 11 ]]; do

  # re-define output as previous with next
  # word concatenated.
  output="$output($count)${text_array[$count]} "

  # C-Style incrementation of count variable
  ((count++))
done

# echo the resulting output to stdout
echo "$output"
