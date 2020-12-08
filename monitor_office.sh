#!/bin/bash

# disable laptop monitor
#xrandr --listmonitors
# 2 Monitore extern, intern off
#xrandr --output eDP-1 --off --output DP-2-2 --auto --output DP-2-3 --auto --left-of DP-2-2

# Laptop-Screen ein + 2 Monitore extern
# eDP-1 Laptop
# DP-2-1 HDMI
# DP-2-2 DP
# DP-2-3 DP
xrandr --output eDP-1 --auto --left-of DP-2-1 --output DP-2-2 --auto --output DP-2-2 --auto --right-of DP-2-1
#
#xrandr --listmonitors
#xrandr --auto
#xrandr --listmonitors

