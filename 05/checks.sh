#!/bin/bash

#CHECK1
if [[ $# -ne 1 ]]; then
  echo "Error: this script support must contain 1 parameter. Please, try again."
  exit 1
fi

#CHECK2
if [[ $1 != */ ]]; then
  echo "Error: parameter must end with '/'"
  exit 1
fi

#CHECK3
if [ ! -d "$1" ]; then
    echo "Error: directory does not exist."
    exit 1
fi