#!/bin/bash

if [[ $1 == *[[:digit:]]* ]]; then
  echo "Error: it is a digit/number"
  exit 1
else
  echo $1
fi