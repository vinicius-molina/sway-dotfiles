#!/bin/bash
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

for i in `ls "$SCRIPTPATH/dotfiles"`; {
  ln -fsv "$SCRIPTPATH/dotfiles/$i" "$HOME/.$i"
}

for i in `ls "$SCRIPTPATH/config"`; {
  ln -fsv "$SCRIPTPATH/config/$i" "$HOME/.config/$i"
}
