# dotfiles directory
dotfiledir=$HOME/dotfiles

# Install Plugin manager to NeoVim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.config}"/nvim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Nvim symlink
ln -sf ${dotfiledir}/.config/nvim/init.vim ~/.config/nvim/

# ideavim symlink
ln -sf ${dotfiledir}/.ideavimrc ~
