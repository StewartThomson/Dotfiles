#!/usr/bin/env bash

rm ~/.dotfiles/.config/wpg/templates/gtk3.0
ln -s ~/.dotfiles/.config/gtk-3.0/settings.ini ~/.dotfiles/.config/wpg/templates/gtk3.0

rm ~/.dotfiles/.config/wpg/templates/i3
ln -s ~/.dotfiles/.config/i3/config ~/.dotfiles/.config/wpg/templates/i3

rm ~/.dotfiles/.config/wpg/templates/dunstrc
ln -s ~/.dotfiles/.config/dunst/dunstrc ~/.dotfiles/.config/wpg/templates/dunstrc

rm ~/.dotfiles/.config/wpg/templates/polybar
ln -s ~/.dotfiles/.config/polybar/config ~/.dotfiles/.config/wpg/templates/polybar
