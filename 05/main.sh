#!/bin/bash

. ./checks.sh
. ./variables.sh

start_time=$(date +%s)

echo "Total number of folders (including all nested ones) = $folders_total"

echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
parse_top_folders "$1"

echo "Total number of files = $files_total"

echo "Number of:"
echo "Configuration files (with the .conf extension) = $config_total"
echo "Text files = $text_total"
echo "Executable files = $executable_total"
echo "Log files (with the extension .log) = $log_total"
echo "Archive files = $archieve_total"
echo "Symbolic links = $sym_links_total"

echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
parse_top_files "$1"

echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
parse_top_exec_files "$1"

end_time=$(date +%s)
echo "Script execution time (in seconds) = $((end_time - start_time))"

