#!/usr/bin/env bash

if [ "$SENDER" = "front_app_switched" ]; then
  sketchybar --set "$NAME" label="$INFO" background.image="app.$INFO"
fi
