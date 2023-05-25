#!/bin/bash

. ./functions.sh

hostname="$(hostname)"
timezone="$(timedatectl show --property=Timezone --value)"
user="$USER"
os="$(uname -s) $(uname -r)"

date="$(date)"
uptime="$(uptime -p)"
uptime_sec="$(($(date +%s) - $(date -d "$(uptime -s)" +%s)))"

ip="$(hostname -I)"
interface=$(ip -o -4 route show to default | awk '{print $5}')
mask_num=$(ip -o -4 addr show dev "$interface" | awk -F '[ /]+' '{print $5}')
mask=$(format_mask "$mask_num")
gateway=$(ip r | awk '/default/ {print $3}')

ram_total_bytes=$(free -b | awk '/Mem:/ {print $2}')
ram_total=$(bytes_to_gigabytes "$ram_total_bytes")" GB"
ram_used_bytes=$(free -b | awk '/Mem:/ {print $3}')
ram_used=$(bytes_to_gigabytes "$ram_used_bytes")" GB"
ram_free_bytes=$(free -b | awk '/Mem:/ {print $4}')
ram_free=$(bytes_to_gigabytes "$ram_free_bytes")" GB"

space_root_bytes=$(find_root | awk '{print $2}')
space_root=$(bytes_to_megabytes "$space_root_bytes")" MB"
space_root_used_bytes=$(find_root | awk '{print $3}')
space_root_used=$(bytes_to_megabytes "$space_root_used_bytes")" MB"
space_root_free_bytes=$(find_root | awk '{print $4}')
space_root_free=$(bytes_to_megabytes "$space_root_free_bytes")" MB"

font1=$(get_color_font $column1_font_color)
back1=$(get_color_back $column1_background)
font2=$(get_color_font $column2_font_color)
back2=$(get_color_back $column2_background)

font1_num="$(print_color_number $column1_font_color)"
back1_num="$(print_color_number $column1_background)"
font2_num="$(print_color_number $column2_font_color)"
back2_num="$(print_color_number $column2_background)"
