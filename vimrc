set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
let s:cpo_save=&cpo
set cpo&vim
inoremap <C-S-F6> :call SwapHeaderFile(1)
inoremap <C-F6> :call SwapHeaderFile(0)
cnoremap <C-F4> c
inoremap <C-F4> c
cnoremap <C-Tab> w
inoremap <C-Tab> w
cmap <S-Insert> +
map! <xHome> <Home>
map! <xEnd> <End>
map! <S-xF4> <S-F4>
map! <S-xF3> <S-F3>
map! <S-xF2> <S-F2>
map! <S-xF1> <S-F1>
map! <xF4> <F4>
map! <xF3> <F3>
map! <xF2> <F2>
map! <xF1> <F1>
imap <S-Insert> 
imap <C-PageDown> L$
imap <C-PageUp> H
noremap  gggHG
vnoremap  "+y
noremap  
vnoremap  :update
nnoremap  :update
onoremap  :update
nmap  "+gP
omap  "+gP
vnoremap  "+x
noremap  
noremap  u
cnoremap   :simalt ~
inoremap   :simalt ~
map Q gq
map \co :CommentOut
vnoremap <C-S-F6> :call SwapHeaderFile(1)
nnoremap <C-S-F6> :call SwapHeaderFile(1)
onoremap <C-S-F6> :call SwapHeaderFile(1)
vnoremap <C-F6> :call SwapHeaderFile(0)
nnoremap <C-F6> :call SwapHeaderFile(0)
onoremap <C-F6> :call SwapHeaderFile(0)
noremap <C-F4> c
noremap <C-Tab> w
vmap <S-Insert> 
vnoremap <BS> d
map <xHome> <Home>
map <xEnd> <End>
map <S-xF4> <S-F4>
map <S-xF3> <S-F3>
map <S-xF2> <S-F2>
map <S-xF1> <S-F1>
map <xF4> <F4>
map <xF3> <F3>
map <xF2> <F2>
map <xF1> <F1>
vmap <C-Del> "*d
vnoremap <S-Del> "+x
vnoremap <C-Insert> "+y
nmap <S-Insert> "+gP
omap <S-Insert> "+gP
nmap <C-PageDown> L$
vmap <C-PageDown> L$
nmap <C-PageUp> H
vmap <C-PageUp> H
cnoremap  gggHG
inoremap  gggHG
inoremap  :update
cmap 1_0ms9_02 +
inoremap  
inoremap  u
noremap   :simalt ~
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set nobackup
set nowritebackup
set diffexpr=MyDiff()
set history=50
set hlsearch
set incsearch
set keymodel=startsel,stopsel
set ruler
set selection=exclusive
set selectmode=mouse,key
set whichwrap=b,s,<,>,[,]
set number 
syntax on
set encoding=utf8
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set wrapmargin=120
set textwidth=1256
set expandtab
set smarttab
set magic
set laststatus=2
set statusline=
set statusline+=%-3.3n\ " buffer number
set statusline+=%f\ " filename
set statusline+=%h%m%r%w " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%= " right align remainder
set statusline+=%k\  " keymap name
set statusline+=%-14(%l/%L,%c%V%) " line, character
set statusline+=%<%p%%,%P " file position
" Show line number, cursor position.
set ruler
" Display incomplete commands.
set showcmd
imap <C-e> <Esc>
ab bjb Bas Bossink
set autowrite
colorscheme evening
filetype plugin on
set foldmethod=syntax
nnoremap <silent> <F11> :YRShow<CR>
let g:xml_syntax_folding=1
au BufEnter *.hs compiler ghc
let g:ghc="/usr/local/bin/ghc"
let g:haddock_browser="/usr/bin/google-chrome"
if has("gui_running")
  if has("gui_gtk2")
    set guifont=DejaVu\ Sans\ Mono\ 9
  elseif has("x11")
    set guifont=-misc-fixed-*-*-*-*-13-*-*-*-*-*-*-*
  else
    set guifont=Courier_New:h11:cDEFAULT
  endif
endif
