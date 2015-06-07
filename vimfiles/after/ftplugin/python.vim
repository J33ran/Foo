
" Only do this when not done yet for this buffer
if !exists("g:virtualenvstatus")
  let g:virtualenvstatus=&statusline
endif



" Only do this when not done yet for this buffer
if b:did_ftplugin==2
    finish
endif



" VirtualEnv status linie
setlocal statusline=[%{virtualenv#statusline()}]
let &statusline=&statusline.g:virtualenvstatus

"if !empty(s:vstatus)
"endif


" Pyflakes
let g:pyflakes_use_quickfix = 0 " Not to use quickwindow to show fixes

" Gundo window Diffs of every save on a file you made.
map <leader>g :GundoToggle<CR>

" Jedi configurations
let g:jedi#use_tabs_not_buffers=0
let g:jedi#use_splits_not_buffers="top"
let g:jedi#auto_close_doc=1
let g:jedi#show_call_signatures=0

" Pep8
map <leader>td <Plug>TaskList
let g:pep8_map='<leader>8'          " Source code consistency 

"Pytho_pydoc
"K is a key for documentation
let g:pydoc_open_cmd = 'tabnew'
let g:pydoc_cmd = 'python -m pydoc' 

setlocal makeprg=python\ -m\ doctest\ %

"gf (goto file) in Python source code to open an imported Python file.{;w
python << EOF
import os
import sys
import vim
for p in sys.path:
    # Add each directory in sys.path, if it exists.
    if os.path.isdir(p):
        # Command 'set' needs backslash before each space.
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF


let b:did_ftplugin = 2
