#!/bin/bash

. ./variables.sh

#CHECK1
if [[ $# -ne 4 ]]; then
  echo "Error: number of parameters would be 4. Please, try again."
  exit 1
fi

#CHECK2
for value in "$@"; do
  if ! [[ $value =~ ^[1-6]$ ]]; then
    echo "Error: all parameters would be digits from 1 to 6. Please, try again."
    exit 1
  fi
done

#CHECK3
if [[ font1 -eq back1 ]] || [[ font2 -eq back2 ]]; then
  echo "Error: font and back are identical. Please, try again."
  exit 1
fi