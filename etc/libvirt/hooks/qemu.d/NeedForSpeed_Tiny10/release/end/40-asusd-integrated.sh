#!/bin/bash

## Load VM variables
source "/etc/libvirt/hooks/qemu.d/NeedForSpeed_Tiny10/vm-vars.conf"

## Use supergfxctl to set graphics mode to vfio
echo "Resetting graphics mode back to Integrated..."
supergfxctl -m Integrated

echo "Graphics mode reset!"
sleep 1
