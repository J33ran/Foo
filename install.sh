#! /bin/sh

mkdir -p vimfiles/bundle
cd vimfiles

git submodule add https://github.com/tpope/vim-pathogen.git bundle/pathogen
git submodule add https://github.com/mitechie/pyflakes-pathogen.git bundle/pyflakes
git submodule add https://github.com/sjl/gundo.vim.git bundle/gundo
git submodule add https://github.com/fs111/pydoc.vim.git bundle/pydoc
git submodule add https://github.com/vim-scripts/pep8.git bundle/pep8
git submodule add https://github.com/davidhalter/jedi-vim.git bundle/jedi
git submodule add https://github.com/jmcantrell/vim-virtualenv bundle/virtualenv
git submodule add https://github.com/vim-scripts/TaskList.vim.git bundle/tasklist
git submodule add https://github.com/vim-scripts/The-NERD-tree.git bundle/nerdtree
git submodule add https://github.com/twerth/ir_black.git bundle/ir_black

git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update



