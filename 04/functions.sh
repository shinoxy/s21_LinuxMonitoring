#!/bin/bash

function format_mask() {
  local mask=$1
  mask_value="${mask#\\}"

  octet1=$((mask_value / 256 / 256 / 256))
  octet2=$((mask_value / 256 / 256 % 256))
  octet3=$((mask_value / 256 % 256))
  octet4=$((mask_value % 256))

  echo "${octet1}.${octet2}.${octet3}.${octet4}"
}

function bytes_to_gigabytes() {
  local bytes=$1
  bytes_value="${bytes#\\}"

  gigabytes=$(echo "scale=3; $bytes_value / 1024 / 1024 / 1024" | bc)

  echo "$gigabytes"
}

function bytes_to_megabytes() {
  local bytes=$1
  bytes_value="${bytes#\\}"

  megabytes=$(echo "scale=3; $bytes_value / 1024 / 1024" | bc)

  echo "$megabytes"
}

function find_root() {
  root=$(df | grep '/$')
  echo "$root"
}

function get_color_font() {
  local color=$1
  if [[ color -eq 1 ]]; then
    echo "\033[97m"
  elif [[ color -eq 2 ]]; then
    echo "\033[91m"
  elif [[ color -eq 3 ]]; then
    echo "\033[92m"
  elif [[ color -eq 4 ]]; then
    echo "\033[94m"
  elif [[ color -eq 5 ]]; then
    echo "\033[95m"
  elif [[ color -eq 6 ]]; then
    echo "\033[30m"
  else
    echo "\033[97m"
  fi
}

function get_color_back() {
  local color=$1
  if [[ color -eq 1 ]]; then
    echo "\033[107m"
  elif [[ color -eq 2 ]]; then
    echo "\033[101m"
  elif [[ color -eq 3 ]]; then
    echo "\033[102m"
  elif [[ color -eq 4 ]]; then
    echo "\033[104m"
  elif [[ color -eq 5 ]]; then
    echo "\033[105m"
  elif [[ color -eq 6 ]]; then
    echo "\033[40m"
  else
    echo "\033[40m"
  fi
}

function get_color_name_font() {
  local color=$1
  if [[ color -eq 1 ]]; then
    echo "white"
  elif [[ color -eq 2 ]]; then
    echo "red"
  elif [[ color -eq 3 ]]; then
    echo "green"
  elif [[ color -eq 4 ]]; then
    echo "blue"
  elif [[ color -eq 5 ]]; then
    echo "purple"
  elif [[ color -eq 6 ]]; then
    echo "black"
  else
    echo "white"
  fi
}

function get_color_name_back() {
  local color=$1
  if [[ color -eq 1 ]]; then
    echo "white"
  elif [[ color -eq 2 ]]; then
    echo "red"
  elif [[ color -eq 3 ]]; then
    echo "green"
  elif [[ color -eq 4 ]]; then
    echo "blue"
  elif [[ color -eq 5 ]]; then
    echo "purple"
  elif [[ color -eq 6 ]]; then
    echo "black"
  else
    echo "black"
  fi
}

function print_color_number() {
  local color=$1
  if [[ color -eq 1 ]]; then
    echo "1"
  elif [[ color -eq 2 ]]; then
    echo "2"
  elif [[ color -eq 3 ]]; then
    echo "3"
  elif [[ color -eq 4 ]]; then
    echo "4"
  elif [[ color -eq 5 ]]; then
    echo "5"
  elif [[ color -eq 6 ]]; then
    echo "6"
  else
    echo "default"
  fi
}