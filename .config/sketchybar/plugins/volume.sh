#!/usr/bin/env bash

if [ "$SENDER" = "volume_change" ]; then
  VOLUME="$INFO"
  COLOR=$FOREGROUND_COLOR

  case "$VOLUME" in
    100) ICON="􀊩"
    ;;
    [6-9][0-9]) ICON="􀊧"
    ;;
    [3-5][0-9]) ICON="􀊥"
    ;;
    [1-9]|[1-2][0-9]) ICON="􀊡"
    ;;
    *) ICON="􀊣" COLOR=$RED
  esac

  sketchybar --set "$NAME" icon="$ICON" icon.color=$COLOR
fi
