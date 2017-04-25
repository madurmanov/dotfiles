#!/bin/bash

eval "$(curl -sL https://raw.githubusercontent.com/madurmanov/install/master/install.sh)"

install_start
install dotfiles $HOME
install_complete
