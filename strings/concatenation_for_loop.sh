#!/bin/bash

# define a sentence
text="The only investors that don’t need to diversify are those that are right 100% of the time."

# define unwanted words
stopwords=("the" 'THAT' 'to' 'ARE' 'those' 'of')

# define output with initiali value of the empty string
output=''

# for each word in the text, check if it is wanted.
for word in $text; do

  # if the lowercase version of word is NOT found in an
  # array of the lowercase versions of each word
  # in the stopwords array, add it to the output
  if ! [[ "${stopwords[*],,}" =~ ${word,,} ]]; then

    # concatenate the word to the existing output
    # with a trailing space.
    output="${output}${word} "
  fi
done

# send the final output to stdout
echo "Output: $output"
