#!/usr/bin/env bash

if [ -z $FOCUSED_WORKSPACE ]; then
    FOCUSED_WORKSPACE=$(aerospace list-workspaces --focused)
fi

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.color=$3 label.color=$2 background.drawing=true
else
    sketchybar --set $NAME background.color=$2 label.color=$3 background.drawing=false
fi
