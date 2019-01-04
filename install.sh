#!/bin/bash

set -e

# Make config directory for Neovim's init.vim
echo '[*] Preparing Neovim config directory ...'
mkdir -p ~/.config/nvim

# Install nvim (and its dependencies: pip3, git), Python 3 and ctags (for tagbar)
echo '[*] App installing Neovim and its dependencies (Python 3 and git), and dependencies for tagbar (exuberant-ctags) ...'
brew install neovim python3

# Install virtualenv to containerize dependencies
echo '[*] Pip installing virtualenv to containerize Neovim dependencies (instead of installing them onto your system) ...'
python3 -m pip install virtualenv
python3 -m virtualenv -p python3 ~/.config/nvim/env/python3

# Install pip modules for Neovim within the virtual environment created
echo '[*] Activating virtualenv and pip installing Neovim (for Python plugin support), libraries for async autocompletion support (jedi, psutil, setproctitle), and library for pep8-style formatting (yapf) ...'
source ~/.config/nvim/env/python3/bin/activate
pip install neovim
deactivate

# (Optional) Alias vim -> nvim
echo '[*] Aliasing vim -> nvim, remember to source ~/.bash_profile ...'
echo "alias vim='nvim'" >> ~/.bash_profile

# Install dein.vim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/installer.sh
# For example, we just use `~/.cache/dein` as installation directory
sh /tmp/install.sh ~/.cache/dein

# Copy init.vim in current working directory to nvim's config location ...
echo '[*] Make a link init.vim -> ~/.config/nvim/init.vim'
ln -s init.vim ~/.config/nvim/init.vim

echo -e "[+] Done, welcome to \033[1m\033[92mNeoVim\033[0m! Try it by running: nvim/vim."
