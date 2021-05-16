#!/bin/bash

echo "Installing script..."

if [ -f "$HOME/.config/change-plymouth.sh" ]
then
echo "Script has already been installed!"
else
cp ./.config/change-plymouth.sh $HOME/.config/
echo "Moved script to ~/.config/"
echo "alias plymouth-theme='~/.config/change-plymouth.sh'" >> $HOME/.bashrc
echo "Added command to .bashrc"
echo "Script has been installed. Run 'plymouth-theme' to change plymouth theme!"
fi
