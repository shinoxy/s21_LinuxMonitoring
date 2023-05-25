#!/bin/bash

. ./variables.sh

echo -e "${font1}${back1}HOSTNAME\e[0m = ${font2}${back2}$hostname\e[0m"
echo -e "${font1}${back1}TIMEZONE\e[0m = ${font2}${back2}$timezone\e[0m"
echo -e "${font1}${back1}USER\e[0m = ${font2}${back2}$user\e[0m"
echo -e "${font1}${back1}OS\e[0m = ${font2}${back2}$os\e[0m"
echo -e "${font1}${back1}DATE\e[0m = ${font2}${back2}$date\e[0m"
echo -e "${font1}${back1}UPTIME\e[0m =${font2}${back2} $uptime\e[0m"
echo -e "${font1}${back1}UPTIME_SEC\e[0m = ${font2}${back2}$uptime_sec\e[0m"
echo -e "${font1}${back1}IP\e[0m = ${font2}${back2}$ip\e[0m"
echo -e "${font1}${back1}MASK\e[0m = ${font2}${back2}$mask\e[0m"
echo -e "${font1}${back1}GATEWAY\e[0m = ${font2}${back2}$gateway\e[0m"
echo -e "${font1}${back1}RAM_TOTAL\e[0m = ${font2}${back2}$ram_total\e[0m"
echo -e "${font1}${back1}RAM_USED\e[0m = ${font2}${back2}$ram_used\e[0m"
echo -e "${font1}${back1}RAM_USED\e[0m = ${font2}${back2}$ram_free\e[0m"
echo -e "${font1}${back1}SPACE_ROOT\e[0m = ${font2}${back2}$space_root\e[0m"
echo -e "${font1}${back1}SPACE_ROOT_USED\e[0m = ${font2}${back2}$space_root_used\e[0m"
echo -e "${font1}${back1}SPACE_ROOT_FREE\e[0m = ${font2}${back2}$space_root_free\e[0m"
