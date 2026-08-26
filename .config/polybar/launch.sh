#!/usr/bin/env bash
# ~/.config/polybar/launch.sh

CONFIG="$HOME/.config/polybar/config.ini"

[ -f "$CONFIG" ] || { echo "missing config: $CONFIG" >&2; exit 1; }

killall -q polybar
while pgrep -u "$UID" -x polybar >/dev/null; do sleep 0.5; done

if type xrandr >/dev/null 2>&1; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar -c "$CONFIG" --reload main &
  done
else
  polybar -c "$CONFIG" --reload main &
fi

echo "polybar launched"
