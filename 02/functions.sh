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