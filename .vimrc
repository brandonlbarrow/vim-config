" Gotta be first
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Add Syntastic plugin here "
"Plugin 'scrooloose/syntastic'
Plugin 'fatih/vim-go'
call vundle#end()
filetype plugin indent on

" General Stuff
syntax on
set nowrap
set ruler
set number
set showcmd
set incsearch
set hlsearch
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab

" Encoding
set encoding=utf8

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"let g:go_def_mode='gopls'"
"let g:go_info_mode='gopls'"


" Go stuff
let g:syntastic_go_checkers = ["gofmt"]
let g:go_fmt_command = "goimports"
let g:go_auto_type = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_format_strings = 1
let g:go_higlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1

" Autocomplete 
setlocal omnifunc=go#complete#Complete
au filetype go inoremap <buffer> . .<C-x><C-o>


