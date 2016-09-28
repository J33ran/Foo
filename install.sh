#! /bin/sh

mkdir -p vimfiles/bundle
cd vimfiles

git clone https://github.com/tpope/vim-pathogen.git bundle/pathogen
git clone https://github.com/mitechie/pyflakes-pathogen.git bundle/pyflakes
git clone https://github.com/sjl/gundo.vim.git bundle/gundo
git clone https://github.com/fs111/pydoc.vim.git bundle/pydoc
git clone https://github.com/vim-scripts/pep8.git bundle/pep8
git clone https://github.com/davidhalter/jedi-vim.git bundle/jedi
git clone https://github.com/jmcantrell/vim-virtualenv bundle/virtualenv
git clone https://github.com/vim-scripts/TaskList.vim.git bundle/tasklist
git clone https://github.com/vim-scripts/The-NERD-tree.git bundle/nerdtree
git clone https://github.com/twerth/ir_black.git bundle/ir_black

ln -s bundle/pathogen/autoload



