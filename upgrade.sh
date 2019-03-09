#!/usr/bin/env bash

# https://www.zentao.net/book/zentaopmshelp/67.html

TAG=zentaopms_11.7.stable_20191129

files=("config.php" "filter.php" "timezones.php" "zentaopms.php")

for file in ${files[@]}; do
    curl -L https://raw.githubusercontent.com/easysoft/zentaopms/${TAG}/config/${file} -o $(dirname $0)/${file}
done
