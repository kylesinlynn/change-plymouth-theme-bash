#!/bin/bash

echo "Theme List"
ls /usr/share/plymouth/themes/

read -p "Enter theme name ( q to quit ): " theme

if [ $theme == q ]
then
echo "Exit!"
else
sudo /usr/sbin/plymouth-set-default-theme $theme
sudo update-initramfs -u
echo "Theme changed!"
echo "Updating grub..."
sudo update-grub
fi
