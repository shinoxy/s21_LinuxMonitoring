#!/bin/bash

. ./functions.sh

folders_total=$(count_folders $1)
files_total=$(find "$1" -type f | wc -l)
config_total=$(find "$1" -type f -name "*.sh" | wc -l)
text_total=$(find "$1" -type f -name "*.txt" | wc -l)
executable_total=$(find "$1" -type f -executable | wc -l)
log_total=$(find "$1" -type f -name "*.log" | wc -l)
archieve_total=$(find "$1" -type f -exec file {} \; | grep -E 'archive|compressed' | wc -l)
sym_links_total=$(find "$1" -type l | wc -l)