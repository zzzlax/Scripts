#!/usr/bin/env bash

echo high >> /sys/class/drm/card0/device/power_dpm_force_performance_level
echo z3fold >> /etc/initramfs-tools/modules
echo lz4 >> /etc/initramfs-tools/modules
echo lz4_compress >> /etc/initramfs-tools/modules
update-initramfs -u
update-grub
rm ~/root
