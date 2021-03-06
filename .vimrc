set nocompatible
filetype plugin on
syntax enable
set hidden
set noshowmode
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set smartindent
set cindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse+=a
set cmdheight=1
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set expandtab
set path+=**
set fileencoding=utf-8

command PyRun write | !python3 %:t
command CRun write | !clear; gcc -std=c11 -Wall %:t -o %:r -lm; ./%:r 

let base16colorspace=256

set statusline=
set statusline+=%#WildMenu#
set statusline+=\ [%{mode()}]\ 
set statusline+=%#VertSplit#
set statusline+=\ %f\ 
set statusline+=%#VertSplit#
set statusline+=%m%r\ 
set statusline+=%=
set statusline+=%#VertSplit#
set statusline+=\ %y\  
set statusline+=%#WildMenu#
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}\ 
set statusline+=%#VertSplit#
set statusline+=\ %p%%\ 
set statusline+=%#WildMenu#
set statusline+=\ %l/%L:%c\ 

hi MatchParen term=bold ctermfg=6 ctermbg=0
