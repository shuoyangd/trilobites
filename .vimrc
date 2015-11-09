set number
syntax on

" smart indent
set smartindent
" these are used for moses, where no <tab> is allowed and indent is 2 characters per level
set expandtab
set shiftwidth=2
set softtabstop=2
" key mapping for toggling paste mode
set pastetoggle=<F9>

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1

" --------------------------------------
" vundle
set nocompatible " be iMproved
filetype off " required!

set rtp+=~/.vim/bundle/vundle
call vundle#begin()
" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" vim-scripts repos
" Bundle 'vim-plugin-foo'
" Bundle 'vim-plugin-bar'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'wincent/Command-T'
Bundle 'scrooloose/syntastic'
Bundle 'MarcWeber/vim-addon-mw-utils.git'
Bundle 'garbas/vim-snipmate'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'majutsushi/tagbar'
Bundle 'tomtom/tlib_vim.git'
"Bundle 'klen/python-mode'
Bundle 'Valloric/YouCompleteMe'
"Bundle 'davidhalter/jedi-vim'
"Bundle 'cespare/vjde'
Bundle 'jcf/vim-latex'
Bundle 'oplatek/Conque-Shell'
call vundle#end()
" filetype plugin indent on " required!
filetype on " we only need filetype instead of filetype indent

" --------------------------------------
" syntastic
let g:syntastic_java_javac_config_file_enabled = 1
let g:syntastic_python_python_exec = '/usr/bin/python'

" --------------------------------------
" vjde
" let g:vjde_lib_path = "src/:lib/Jama-1.0.2.jar:lib/junit-4.10.jar:lib/patricia-trie-0.6.jar:pcj-1.2.jar:servlet-api.jar:whatwrong.jar"

" --------------------------------------
" vim-latex
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" --------------------------------------
" pythonmode
" let g:pymode_folding = 0 " disable code folding
" let g:pymode_lint = 0 " disable code checking, since we've got syntastic
" let g:pymode_options_colorcolumn = 0 " disable colorcolumn
" let g:pymode_indent = 0 " disable indentation, since we love tabs

" --------------------------------------
" youcompleteme
let g:ycm_cache_omnifunc=0
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" --------------------------------------
" ctags
set tags=./tags,tags;$HOME
