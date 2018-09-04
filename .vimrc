" {{{ Habit Breaking
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" }}}
set rtp+=~/.fzf
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
" {{{ Specials
set mouse=a
set backspace=indent,eol,start
set nocompatible            " be iMproved, required
set paste                   " paste without side effects
set laststatus=2
set timeoutlen=50
filetype on                " required
filetype plugin indent on   " required
syntax enable
" }}}
" {{{ Colours
colorscheme badwolf
" }}}
" Spaces and Tabs {{{
set tabstop=2 shiftwidth=2 expandtab
" }}}
" UI Config {{{
set number                  " show line numbers
set numberwidth=5           " Make the numbers column wider
set showcmd                 " show command in bottom bar
set cursorline              " highlight current line
set wildmenu                " visual autocomplete for command menu
set showmatch               " highlight matching [{()}]
set lazyredraw              " redraw only when we need to
set textwidth=80
set colorcolumn=+1
" }}}
" Searching {{{
set incsearch               " search as characters are entered
set hlsearch                " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" }}}
" Folding {{{
set foldenable              " enable folding
set foldlevelstart=10       " open most folds by default
set foldnestmax=10          " 10 nested fold max
" space open/closes fold
nnoremap <space> za
set foldmethod=indent       " fold based on indent level
" }}}
" Movement {{{
" }}}
" Leader Shortcuts {{{
let mapleader=","
inoremap jk <esc>
nnoremap <leader>s :mksession<CR>
nnoremap <leader>a :Ag
" }}}
" CtrlP settings {{{
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" }}}
" Tmux {{{
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
" }}}
" Autogroups {{{
"augroup configgroup
"    autocmd!
"    autocmd VimEnter * highlight clear SignColumn
"    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
"                \:call <SID>StripTrailingWhitespaces()
"    autocmd FileType java setlocal noexpandtab
"    autocmd FileType java setlocal list
"    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
"    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
"    autocmd FileType php setlocal expandtab
"    autocmd FileType php setlocal list
"    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
"    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
"    autocmd FileType ruby setlocal tabstop=2
"    autocmd FileType ruby setlocal shiftwidth=2
"    autocmd FileType ruby setlocal softtabstop=2
"    autocmd FileType ruby setlocal commentstring=#\ %s
"    autocmd FileType python setlocal commentstring=#\ %s
"    autocmd BufEnter *.cls setlocal filetype=java
"    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
"    autocmd BufEnter Makefile setlocal noexpandtab
"    autocmd BufEnter *.sh setlocal tabstop=2
"    autocmd BufEnter *.sh setlocal shiftwidth=2
"    autocmd BufEnter *.sh setlocal softtabstop=2
"augroup END
" }}}
" Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}
" Functions {{{
" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
" }}}
" Vundle Plugins {{{
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'fatih/vim-go'
Plugin 'mattn/emmet-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-fugitive'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
" Track the engine.
"Plugin 'SirVer/ultisnips'
call vundle#end()            " required
" }}}

" vim:foldmethod=marker:foldlevel=0
