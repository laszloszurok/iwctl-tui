#!/usr/bin/env bash

str=$(iwctl station wlan0 get-networks | tail -n +5 | cut -d' ' -f4-)

IFS=$'\n'
array=($str)

for item in ${array[@]}; do
    printf "%s\n" "$item" | xargs | rev | cut -d' ' -f3- | rev
done

