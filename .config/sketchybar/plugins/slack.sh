#!/usr/bin/env bash

SLACK_NOTI=$(lsappinfo info -only StatusLabel Slack | sed -n 's/.*"label"="\(.*\)".*/\1/p')

if [ $SLACK_NOTI -ge 1 ]; then
    sketchybar --set "$NAME" drawing=true label="${SLACK_NOTI}"
else
    sketchybar --set "$NAME" drawing=false
fi
