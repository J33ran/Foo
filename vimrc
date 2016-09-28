set nocompatible            " not use vi
filetype off

source .vim/bundle/pathogen/autoload/pathogen.vim

call pathogen#infect()
call pathogen#helptags()

syntax enable                  " Overrule user color settings with defaults
"syntax on                  " Overrule user color settings with defaults
filetype plugin indent on   "detection:on plugin:on indent:on
set ff=unix
set splitright              " Open new vertical split window on right view
set autochdir               " Change current directory to opened file.
set wrapmargin=2            " Number of characters from the right window border where wrapping starts.
"set nowrap                 " not to break lines.
set ignorecase              " case insensitive
set viminfo='50,f1          " read/write a .viminfo file, don't store more than 50 lines of registers 
set history=50              " keep 50 lines of command line history
set showcmd                 " display incomplete commands
set modeline                "
set modelines=5             " check the first five lines in a file for vim:
set magic                   " to restore the special meanings of regular expression characters 
                            "(period, asterisk, square bracket, etc.)
set joinspaces              " insert 2 spaces after a period when joining lines
set autoindent
set smartindent
set cindent
set smarttab                " Insert's tab at the end or start of line.
set shiftwidth=4            " Number of spaces to use for each step of indent (width 4).
set tabstop=4               " Default setting of tabstop as recommended in help (width 4) -- printing, etc 
set softtabstop=4           " Use a mix of tabs and spaces when I press the TAB key (width 4)
set expandtab               " Replace TAB character with only spaces. 
set backspace=2             " enable backspace.
set foldmethod=indent       " Lines with the same indent level form a fold
set showmatch               " shows matching braces.
set showmode                " show modes (normal, insert , selection etc.)
set ruler                   " task bar info
set nu                      " line number col
set incsearch               " incremental search
set wildmode=list:longest   " list when more than one match, list all matches.
"set virtualedit=all        " allows the cursor to freely roam
"set nohidden                " don't hide buffers when they are abondoned
set hidden                  " Hide changed buffers but don't save implicitly.
set autowrite               " automatically save changes when jumping from file to file
set autoread                " set to auto read when a file is changed from the outside
set ignorecase              " ignore case when searching"Ignore case when searching
set hls                     " highlight searched text
set laststatus=2            " always show the status line
"set mouse=a                " all modes
set completeopt=longest,menuone         " just inserts the longest common text of all matches and bring up the menu
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

set mousehide               " Hide the mouse when typing text
set lazyredraw              " Don't redraw screen during macros
set ttyfast                 " Improves redrawing for newer computers
set list                    " what exactly in file.
set lcs=tab:<-,trail:·,eol:$,extends:·,nbsp:$,precedes:· " Highlight nonText chars
"set paste                   " Copy or paste text from otherwindows.

if has("gui_fontset")
  set gfn=Courier_New:h9:cANSI
endif

if has("gui_running")
  set numberwidth=4           " By default can fit at least 9999 lines
  set lines=60                " Make our GUI window reasonably tall
  set columns=120             " 80 columns + 4 numberwidth.
  colo ir_black               " Color scheme
else
  colo ir_black               " Color scheme
  "colo inkpot
endif

au BufEnter * lcd %:p:h

"autocmd VimEnter *  NERDTree " open vim with NERDTree window
"autocmd VimEnter * wincmd p  " Move cursor on main not Nerdtree

autocmd! bufwritepost .vimrc source % " reload the vimrc after changes

"better copy paste
set pastetoggle=<F2>
set clipboard=unnamed
"let mapleader=","

" NerdTree
let g:NERDTreeSortDirs=1        " NerdTree sort dirs.
let g:NERDTreeChDirMode=2       " NerdTee Change CWD
map <F3> :exec 'NERDTreeToggle '.getcwd()<CR>:exec 'wincmd p'<CR>

" Searching tool like grep but better than grep
nnoremap <C-K> :set hls<CR>:exec "let @/='\\<".expand("<cword>")."\\>'"<CR>/<BS>
nnoremap <C-W>z :conf qa<CR>
nnoremap <C-W>c :close!<CR>

" Emacs start of line 
cnoremap <C-A>    <Home>

" Back one character
cnoremap <C-B>    <Left>

" Delete character under cursor
cnoremap <C-D>    <Del>

" End of line
cnoremap <C-E>    <End>

" Forward one character
cnoremap <C-F>    <Right>

" Recall newer command-line
cnoremap <C-N>    <Down> 

" Recall previous (older) command-line
cnoremap <C-P>    <Up> 

set statusline=%t       "tail of the filename
"set statusline+=[%{&ff}] "file format
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
"set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
"set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
"set statusline+=%=-      "left/right separator
"set statusline+=%-


