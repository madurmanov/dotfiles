#!/bin/bash

eval "$(curl -sL https://raw.githubusercontent.com/madurmanov/musical-install/master/musical-install.sh)"

mi_start
mi_install dotfiles $HOME true
mi_complete
