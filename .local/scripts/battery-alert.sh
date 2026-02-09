#!/bin/bash

BATTERY_PATH="/sys/class/power_supply/BAT0"
COOLDOWN_FILE="/tmp/battery-alert-cooldown"
COOLDOWN_TIME=300

while true; do
    capacity=$(cat "$BATTERY_PATH/capacity" 2>/dev/null)
    status=$(cat "$BATTERY_PATH/status" 2>/dev/null)

    if [[ "$status" == "Discharging" && "$capacity" -le 5 ]]; then
        if [[ ! -f "$COOLDOWN_FILE" ]] || \
           [[ $(($(date +%s) - $(cat "$COOLDOWN_FILE" 2>/dev/null || echo 0))) -gt $COOLDOWN_TIME ]]; then
            notify-send -u critical "Battery Critical" "Battery at ${capacity}% - Plug in now!"
            echo "$(date +%s)" > "$COOLDOWN_FILE"
        fi
    fi

    sleep 60
done
