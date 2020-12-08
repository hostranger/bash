#!/bin/bash

aseqdump -l

#aseqdump -p "32:0"
#
# Waiting for data. Press Ctrl+C to end.
# Source  Event                  Ch  Data
#  32:0   Note off                0, note 0
#  32:0   Note on                 0, note 0, velocity 127
#  32:0   Note off                0, note 0
#  32:0   Control change          0, controller 104, value 127
#
#  src    ev1  ev2                ch label1  data1 label2 data2 rest
aseqdump -p "32:0" | \
while IFS=" ," read src ev1 ev2 ch label1 data1 label2 data2 rest; do
    case "$ev1 $ev2 $data1" in
        "Note on 0" ) xdotool type hello ;;
        "Note on 1" ) xdotool key Super_L+Shift+49 ;;
        "Note on 2" ) xdotool key Super_L+49 ;;
        "Note on 8" ) xdotool key ctrl+j ;;
        "Control change 104" ) xdotool key ctrl+c ;;
        "Note on 72" ) xdotool key ctrl+c ;;
    esac
done
