#!/usr/bin/env bash

if [ $(aerospace list-modes --current) = "service" ]; then
    sketchybar --set $NAME label="S" label.font.style="Bold"
else
    sketchybar --set $NAME label="M" label.font.style="Regular"
fi
