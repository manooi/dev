#!/usr/bin/env bash

# Kill existing polybar instances
killall -q polybar

# Wait for the process to shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch main bar (you can name it anything from your config.ini)
polybar example &

