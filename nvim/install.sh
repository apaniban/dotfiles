if [ ! -f "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim ]
then
  echo "› installing vim-plug"

  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi

if [ ! -f "$HOME/.config/nvim/init.vim" ]
then
  echo "› linking init.vim"

  CONFIG_PATH=$(dirname $(realpath -s $0))
  NVIM_CONFIG_DIR="$HOME/.config/nvim"
  mkdir -p $NVIM_CONFIG_DIR

  ln -s "$CONFIG_PATH/init.vim" "$NVIM_CONFIG_DIR/init.vim"
fi

echo "› neovim setup complete."
