#!/bin/bash

. ./variables.sh

#CHECK1
if [[ $# -ne 0 ]]; then
  echo "Error: this script doesn't support parameters. Please, try again."
  exit 1
fi

#CHECK2
if [[ column1_background -eq column1_font_color ]]| [[ column2_background -eq column2_font_color ]]; then
  echo "Error: font and back are identical. Please, try again."
  exit 1
fi

