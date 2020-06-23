cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)

echo "Installing vim-plug..."

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Creating nvim config"
NVIM_DIR="$HOME/.config/nvim"
mkdir -p $NVIM_DIR


echo "Linking vim config"
src="$DOTFILES_ROOT/nvim/init.vim"
dst="$NVIM_DIR/init.vim"

ln -s $src $dst

echo "Neovim installed"
