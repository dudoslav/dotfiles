#!/bin/bash

sed -i s'/graphicsset = .*$/graphicsset = "OpenGFX"/g' /home/dudoslav/.openttd/openttd.cfg

sed -i s'/colorscheme .*$/colorscheme morning/g' /home/dudoslav/.config/nvim/init.vim
