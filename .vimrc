let g:NERDTreeNodeDelimiter = "\x07"
let g:NERDTreeGlyphReadOnly = "RO"

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'luochen1990/rainbow'
call plug#end()

"save undo history
"tell it to use an undo file
set undofile
"set a directory to store the undo history
set undodir=~/.vimundo/

set hidden

"Solarized
"http://ethanschoonover.com/solarized
syntax enable
colorscheme solarized " anotherdark, solarized, bclear

if has("gui_running")
  set background=dark
  set guifont=Fira\ Code\ Regular:h14
  set antialias
else
  set background=dark
endif

set number
set hlsearch
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
" sometimes makes syntax highlighting really slow
" set cursorline

set backspace=indent,eol,start  " backspace through everything in insert mode

set encoding=utf-8 " set charset translation encoding
set termencoding=utf-8                              " set terminal encoding
set fileencoding=utf-8                              " set save encoding
set fileencodings=utf8,koi8r,cp1251,cp866,ucs-2le   "

"set keymap=russian-jcukenwin
set nocompatible

set smarttab
set smartindent
set shiftwidth=2
set tabstop=2
set expandtab
set textwidth=60

" перенос по словам
set wrap
set linebreak

set autoindent
set smartindent
filetype on
filetype plugin on
filetype indent on

set nobackup
set nowritebackup

set guioptions=aiA
" set guifont=Inconsolata\ LGC\ for\ Powerline:h14

" Commands for :Explore
let g:explVertical=1    "  vertical split winow

let g:explSplitRight=1  " Put new window to the right of the explorer
let g:explStartRight=0  " new windows go to right of explorer window

" BREAKS ULTISNIPS!
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
"set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

let g:user_emmet_expandabbr_key = '<C-Space>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" NERD tree
"http://www.vim.org/scripts/script.php?script_id=1658
let NERDTreeShowHidden=1

" status line (POWERLINE)
" set laststatus=2
" set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
" let g:Powerline_theme='short'
" let g:Powerline_colorscheme='solarized16_dark'
" set statusline +=%1*%4v\ %*
"set statusline +=%2*0x%04B\ %*
" set statusline+=%{GitBranchInfoString()}\ [\%l][\%c]
" set statusline+=%#warningmsg#
" set statusline+=%*

" dollar sign in the end of changing part
set cpoptions+=$

" JS syntax check
" http://stackoverflow.com/questions/473478/vim-jslint/5893447#5893447


" Keys
imap jj <esc>

" Custom extension - filetype mapping
au BufNewFile,BufRead *.eco set filetype=html.eco
au BufNewFile,BufRead *.jeco set filetype=html.jeco
au BufNewFile,BufRead *.mustashe set filetype=html.mustashe
au BufNewFile,BufRead *.jquery.tmpl set filetype=html.jquery.tmpl
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.snippets set filetype=snippets
au BufNewFile,BufRead *.js set filetype=javascript
au! BufRead,BufNewFile *.json set filetype=json

" Don't show .pyc files in NERDTree
let NERDTreeIgnore = ['\.pyc$']

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

" Automatically clean trailing whitespaces on save
autocmd BufWritePre *.* :call <SID>StripTrailingWhitespaces()


"Compile snippets of LiveScript in visual mode with c"
au BufNewFile,BufReadPost Slakefile,*.ls vmap c <ESC>:'<,'>LiveScriptCompile<CR>
au BufNewFile,BufReadPost Slakefile,*.ls map c :LiveScriptCompile<CR>

let g:rainbow_active = 1

