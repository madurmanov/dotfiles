#!/bin/bash

eval "$(curl -sL https://raw.githubusercontent.com/madurmanov/install/master/install.sh)"


install_start


if confirm "$DYWI dotfiles" ; then
  install dotfiles $HOME
fi


install_complete

exit 0
