#!/usr/bin/env bash

if [ "$1" = "$(aerospace list-workspaces --focused)" ]; then
    sketchybar --set $NAME background.color=$3 label.color=$2 background.drawing=true
else
    sketchybar --set $NAME background.color=$2 label.color=$3 background.drawing=false
fi
