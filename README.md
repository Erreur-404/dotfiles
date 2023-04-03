# Overview
This repository holds the relevant files to mimic the graphical environment that I use. It is heavily inspired by [this](https://github.com/Void-TK-57/dotfiles-Cthulhu) github repository, but is still different in many ways.

# Installation
> Note: Make sure to backup your files before following this guide if any of the commands below involve overwriting a config
```shell
$ cd ~/bin
$ git clone https://github.com/Erreur-404/dotfiles.git
$ ln -s ~/bin/dotfiles/.config/alacritty/ ~/.config/
$ ln -s ~/bin/dotfiles/.config/dunst/ ~/.config/ 
$ ln -s ~/bin/dotfiles/.config/i3/ ~/.config/
$ ln -s ~/bin/dotfiles/.config/picom/ ~/.config/
$ ln -s ~/bin/dotfiles/.config/polybar/ ~/.config/
$ ln -s ~/bin/dotfiles/.config/rofi/ ~/.config/
$ ln -s ~/bin/dotfiles/.config/ranger ~/.config/
$ ln -s ~/bin/dotfiles/.config/gtk-3.0/settings.ini ~/.config/gtk-3.0/
$ ln -s ~/bin/dotfiles/.config/oh-my-zsh/themes/jonathan.zsh-theme ~/.oh-my-zsh/themes/jonathan.zsh-theme
$ ln -s ~/bin/dotfiles/.vim ~/
```

# Tools
Use the `i3-theme` tool located in `~/bin/dotfiles/bin/i3-theme/i3-theme.sh` to change the theme dynamically
