#!/usr/bin/env bash

pkill polybar
polybar -r --config=$HOME/.config/polybar/config-openbox bar1 &
#polybar -r --config=$HOME/.config/polybar/config-openbox bar2 &

exit 0
