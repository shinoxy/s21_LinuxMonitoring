#!/bin/bash

. ./variables.sh

#CHECK1
if [[ $# -ne 0 ]]; then
  echo "Error: this script doesn't support parameters. Please, try again."
  exit 1
fi

#CHECK2
if [[ "$font1_num" == "$back1_num" ]] || [[ $font2_num == $back2_num ]]; then
  if [[ "$font1_num" != "default" ]] && [[ "$back1_num" != "default" ]] && [[ "$font2_num" != "default" ]] && [[ "$back2_num" != "default" ]]; then
    echo "Error: font and back are identical. Please, try again."
    exit 1
  fi
fi

