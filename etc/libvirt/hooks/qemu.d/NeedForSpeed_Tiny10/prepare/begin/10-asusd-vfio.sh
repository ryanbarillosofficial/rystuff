#!/bin/bash

## Load VM variables
source "/etc/libvirt/hooks/qemu.d/NeedForSpeed_Tiny10/vm-vars.conf"

## Use supergfxctl to set graphics mode to vfio
echo "Setting graphics mode to VFIO..."
supergfxctl -m Vfio

echo "Graphics mode set!"
sleep 1
