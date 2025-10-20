#!/bin/bash

## Load VM variables
source "/etc/libvirt/hooks/qemu.d/win10/vm-vars.conf"

## Set power profile to "Performance"
asusctl profile --profile-set Balanced

sleep 1
