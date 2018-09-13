set number
syntax on

" brighter comment! 
highlight Comment ctermfg=darkgray

" smart indent
set smartindent
" these are used for moses, where no <tab> is allowed and indent is 2 characters per level
set expandtab
set shiftwidth=2
set softtabstop=2
" key mapping for toggling paste mode
set pastetoggle=<F9>

" enable folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" let g:miniBufExplMapWindowNavVim = 1 
" let g:miniBufExplMapWindowNavArrows = 1 
" let g:miniBufExplMapCTabSwitchBufs = 1 
" let g:miniBufExplModSelTarget = 1

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
" Bundle 'fholgado/minibufexpl.vim'
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
"Bundle 'oblitum/YouCompleteMe'
"Bundle 'davidhalter/jedi-vim'
"Bundle 'cespare/vjde'
Bundle 'jcf/vim-latex'
Bundle 'oplatek/Conque-Shell'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'vchahun/vim-ducttape'
call vundle#end()
" filetype plugin indent on " required!
filetype plugin on " we only need filetype instead of filetype indent

" --------------------------------------
" syntastic
let g:syntastic_java_javac_config_file_enabled = 1
let g:syntastic_python_python_exec = 'python'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E501,E225,E111,E114,E302,E303'

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

"" color
"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
"highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900

"" turn on completion in comments
let g:ycm_complete_in_comments=1
"" load ycm conf by default
let g:ycm_confirm_extra_conf=0
"" turn on tag completion
let g:ycm_collect_identifiers_from_tags_files=1
"" introduce C++ stdlib tags
"set tags+=/data/misc/software/misc./vim/stdcpp.tags
"" OmniCppComplete keymapping
"inoremap <leader>; <C-x><C-o>
"" only show completion as a list instead of a sub-window
set completeopt+=preview
"" start completion from the first character
let g:ycm_min_num_of_chars_for_completion=1
"" don't cache completion items
let g:ycm_cache_omnifunc=0
"" complete syntax keywords
let g:ycm_seed_identifiers_with_syntax=1
"" for python
let g:ycm_python_binary_path='python'

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" for oblitum's branch
" set ttimeoutlen=50  " for faster InsertLeave triggering

" --------------------------------------
" ctags
set tags=tags;/
"" auto generate tags
"au BufWritePost *.c,*.cpp,*.h silent! !ctags -R &

" --------------------------------------
" airline
let g:airline_powerline_fonts=1
let g:airline_theme='luna'
let g:powerline_symbols='unicode'
let g:airline#extensions#tabline#enabled=2
nmap <C-n> :bn<CR>
