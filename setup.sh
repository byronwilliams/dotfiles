#!/bin/sh

ln -rs i3/ ~/.i3
ln -rs xinitrc ~/.xinitrc
ln -rs xsession ~/.xsession
ln -rs Xresources ~/.Xresources
ln -rs config/fish/config.fish ~/.config/fish/config.fish
ln -rs config/sakura/sakura.conf ~/.config/sakura/sakura.conf

ln -rs config/sakura/sakura.conf
ln -rs redshift.conf ~/.config/redshift.conf

mkdir -p ~/.atom
ls -rs atom/keymap.cson ~/.atom/keymap.cson
ln -rs atom/config.cson ~/.atom/config.cson
ln -rs config/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
