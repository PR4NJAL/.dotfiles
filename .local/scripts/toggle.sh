#!/usr/bin/env bash

current_layout=$(hyprctl getoption general:layout | awk -F': ' '/str:/ {print $2}')

if [[ "$current_layout" == "scrolling" ]]; then
    new_layout="dwindle"
else
    new_layout="scrolling"
fi

hyprctl "keyword general:layout $new_layout"
