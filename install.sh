#!/bin/bash

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

export PATH="/opt/homebrew/bin:$PATH"

# Install software
brew bundle install

mkdir -p ~/.config
git clone https://github.com/oncomouse/neovim-config ~/.config/nvim
git clone https://github.com/oncomouse/govt-emacs ~/.emacs.d

mkdir -p ~/.config/fish/conf.d
echo "fzf --fish | source" > ~/.config/fish/conf.d/fzf.fish
