#!/bin/bash

. ./variables.sh
. ./print.sh

echo "Write data to a file? Y/N"
read answer
if [[ $answer == "Y" ]] || [[ $answer == "y" ]]; then
  . ./print.sh > "$(date +"%d_%m_%y_%H_%M_%S").status"
fi