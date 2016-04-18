# Backups, swaps and undos are stored here.
mkdir -p $ZSH/caches/vim

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

# Download Vim plugins.
if [[ "$(type -P vim)" ]]; then
  vim +PlugUpgrade +PlugUpdate +qall
fi
