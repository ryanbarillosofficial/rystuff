# Aliases
for alias in ./alias/*; do
    if ! grep -Fxq "source /rystuff/alias/${alias##*/}" /etc/bash.bashrc; then
        echo "source /rystuff/alias/${alias##*/}" | sudo tee -a /etc/bash.bashrc > /dev/null
    fi
done

# Symbolic links
ln -s /rystuff/etc/firefox /etc
ln -s /rystuff/etc/initcpio/post/copy-kernel-and-initramfs /etc/initcpio/post/

# Pacman
rm /etc/pacman.conf /etc/pacman.d/mirrorlist
ln -s /rystuff/etc/pacman.conf /etc/
ln -s /rystuff/etc/pacman.d/mirrorlist /etc/pacman.d/



