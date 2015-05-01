
" Only do this when not done yet for this buffer
"    if exists("b:did_ftplugin")
"      finish
"    endif

if !filereadable(expand("%:p:h")."/Makefile")
    setlocal makeprg=g++\ -std=c++11\ -Wall\ -Wextra\ -g\ -o\ %<\ %
endif

" Automatically open, but do not go to (if there are errors) the quickfix /
" location list window, or close it when is has become empty.
"
" Note: Must allow nesting of autocmds to enable any customizations for quickfix
" buffers.
" Note: Normally, :cwindow jumps to the quickfix window if the command opens it
" (but not if it's already open). However, as part of the autocmd, this doesn't
" seem to happen.
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

