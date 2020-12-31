#!/usr/bin/env sh

# Kill any already open poly processes
killall -q polybar

# Wait for closure
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch
polybar -c ~/.config/polybar/config.ini primary &
