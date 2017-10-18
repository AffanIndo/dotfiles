#!/usr/bin/env bash
if [ $1 == install ]; then
    # Pathogen
    mkdir -p ~/.vim/autoload ~/.vim/bundle
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

    # Plugins
    git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
    git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
    git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter
    git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
    git clone https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim
    git clone git://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround
    git clone git://github.com/tpope/vim-repeat.git ~/.vim/bundle/vim-repeat
    git clone https://github.com/mattn/emmet-vim.git ~/.vim/bundle/emmet-vim
    # Fugitive Start
    cd ~/.vim/bundle
    git clone https://github.com/tpope/vim-fugitive.git
    vim -u NONE -c "helptags vim-fugitive/doc" -c q
    # Fugitive End
    https://github.com/ervandew/supertab.git
elif [ $1 == update ]; then
    for i in ~/.vim/bundle/*; do git -C $i pull; done
else
    echo "Unknown command"
fi
