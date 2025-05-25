#!/usr/bin/env bash

INFO="$(ipconfig getsummary en0 | awk -F ' SSID : '  '/ SSID : / {print $2}')"

if [ -z $INFO ]; then
    sketchybar --set "$NAME" icon="􀙈" icon.color=$RED
else
    sketchybar --set "$NAME" icon="􀙇" icon.color=$FOREGROUND_COLOR
fi
