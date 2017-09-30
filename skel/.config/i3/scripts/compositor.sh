#!/bin/bash

start="compton -b --config $HOME/.config/compton.conf"
stop="pkill compton"

if pgrep "compton" > /dev/null; then
    $stop
    $start
else
    $start
fi

exit 0
