#!/bin/bash

function count_folders() {
   local count=0
   for item in "$1"/*; do
     if [ -d "$item" ]; then
       count=$((count + 1))
       count_subfolders=$(count_folders "$item")
       count=$((count + count_subfolders))
     fi
   done
   echo "$count"
}

function parse_top_folders() {
   du -sh "$1"/* | sort -rh | head -n 5 | awk '{print NR " - " $2 ", " $1}'
}

function parse_top_files() {
   find "$1" -type f -exec ls -sh {} + | sort -rh | head -n 10 | awk '{print NR " - " $2 ", " $1}'
}

function parse_top_exec_files() {
  find "$1" -type f -executable | while read -r file; do
    size=$(du -h "$file" | awk '{print $1}')
    md5=$(md5sum "$file" | awk '{print $1}')
    echo "$file, $size, $md5"
  done | sort -hrk 2 | head -n 10 | awk '{print NR " - " $1 " " $2 " " $3}'

}