#!/usr/bin/env bash

current=$(hyprctl getoption general:layout | awk 'NR==1{print $2}')

case "$current" in
    dwindle)
        hyprctl keyword general:layout master
        ;;
    master)
        hyprctl keyword general:layout scrolling
        ;;
    scrolling)
        hyprctl keyword general:layout dwindle
        ;;
esac
