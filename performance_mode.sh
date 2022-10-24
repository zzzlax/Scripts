#!/usr/bin/env bash

## run script once and delete

echo "[Desktop Entry]
Type=Application
Name=Performance
GenericName=Performance
Comment=
Categories=System;
Exec=echo 'Performance' | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor" >> /etc/xdg/autostart/performance.desktop

if [ -f /etc/xdg/autostart/performance.desktop ] ; then
    echo "CPU Frequency set to max"
else
    echo "Something went wrong. CPU Frequency not set"
fi
