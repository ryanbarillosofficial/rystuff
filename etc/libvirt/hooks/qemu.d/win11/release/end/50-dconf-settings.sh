#!/bin/bash

## Load VM variables
source "/etc/libvirt/hooks/qemu.d/win10/vm-vars.conf"

## Set dconf keys to re-enable screensaver and screen blanking. This is
## needed as looking-glass disable screensaver doesn't work with Gnome
export LOGGED_IN_USERID
export GNOME_IDLE_DELAY
su $LOGGED_IN_USERNAME -c 'export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$LOGGED_IN_USERID/bus \
&& dconf write /org/gnome/settings-daemon/plugins/power/idle-dim true \
&& dconf write /org/gnome/desktop/session/idle-delay "uint32 $GNOME_IDLE_DELAY"'

sleep 1