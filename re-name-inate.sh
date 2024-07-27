#!/bin/bash

# directory="C:\Users\Rudradev Arya\Desktop\backup 2"
directory="Z:\GfG\POTD"
# directory="/c/Users/Rudradev Arya/Desktop/Dates test"


cd "$directory" || exit

# Loop through each file in the directory
for file in *.cpp; do
  
  day="${file:0:2}"
  month="${file:3:2}"
  year="${file:6:2}"
  rest="${file:9}"
  
  
  new_filename="20${year}-${month}-${day}_${rest}"
  
#   mv "$file" "$new_filename"
  git mv "$file" "$new_filename"
done

