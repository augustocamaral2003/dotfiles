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
command TexPDF write | silent !pdflatex -synctex=1 -interaction=nonstopmode %:t && %:r.pdf
command PyRun write | !py %
command CRun write | !gcc -Wall -o %:r %:t | !./%:r
command TexSection r ~\.vim\section.txt
command TexPreamble r ~\.vim\preamble.txt
command TexPDFV write | !pdflatex -synctex=1 -interaction=nonstopmode %:t && %:r.pdf
let base16colorspace=256

function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

set statusline=
set statusline+=%#WildMenu#
set statusline+=\ [%{mode()}]\ 
set statusline+=%#SpellLocal#
set statusline+=\ %F\ 
set statusline+=%#StatusLineNC#
set statusline+=%m%r\ 
set statusline+=%=
set statusline+=%#StatusLineTerm#
set statusline+=\ %y\  
set statusline+=%#DiffDelete#
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}\ 
set statusline+=%#VertSplit#
set statusline+=\ [%{GitBranch()}\]\ 
set statusline+=%#ColorColumn#
set statusline+=\ %p%%\ 
set statusline+=%#DiffChange#
set statusline+=\ %l/%L:%c\ 
