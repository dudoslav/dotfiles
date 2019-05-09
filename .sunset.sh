#!/bin/bash

sed -i s'/graphicsset = .*$/graphicsset = "NightGFX"/g' /home/dudoslav/.openttd/openttd.cfg

sed -i s'/colorscheme .*$/colorscheme Crystallite/g' /home/dudoslav/.config/nvim/init.vim
