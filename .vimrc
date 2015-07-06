set nocompatible              " be iMproved, required
set nobackup                  " No swp files"
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'L9'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'othree/vim-autocomplpop'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'scrooloose/syntastic'
Plugin 'msanders/snipmate.vim'
Plugin 'tsaleh/vim-align'
Plugin 'austintaylor/vim-indentobject'
Plugin 'skwp/greplace.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-endwise'
Plugin 'Raimondi/delimitMate'
Plugin 'airblade/vim-gitgutter'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'vim-scripts/blockle.vim'
Plugin 'tpope/vim-vividchalk'
Plugin 'vim-ruby/vim-ruby'
Plugin 'JSON.vim'
Plugin 'tpope/vim-markdown'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kana/vim-textobj-user'
Plugin 'vitaly/vim-syntastic-coffee'
Plugin 'wavded/vim-stylus'
Plugin 'slim-template/vim-slim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'groenewege/vim-less'
Plugin 'fatih/vim-go'
Plugin 'haya14busa/incsearch.vim'

call vundle#end()            " required

syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set number
 
"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
 
"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

colorscheme vividchalk 

set guifont=Menlo\ Regular:h18

let mapleader = ","
" nerdtree
" " Ctrl-P to Display the file browser tree
nmap <C-P> :NERDTreeTabsToggle<CR>
" " ,p to show current file in the tree
nmap <leader>p :NERDTreeFind<CR>
" ,y to show the yankring
nmap <leader>y :YRShow<cr>

let g:ctrlp_map = '<leader>,'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_clear_cache_on_exit = 1
cal ctrlp#clra()
let g:ctrlp_max_height = 40
let g:ctrlp_switch_buffer = 1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files --exclude-standard -cod']

" ,g for Ggrep
nmap <leader>g :silent Ggrep<space>

" ,f for global git serach for word under the cursor (with highlight)
nmap <leader>f :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ggrep -w "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>


" vim-indentobject
" add Markdown to the list of indentation based languages
let g:indentobject_meaningful_indentation = ["haml", "sass", "python", "yaml", "markdown"]
" indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 5

" nerdcommenter
" " ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" Ctrl-N to disable search match highlight
nmap <silent> <C-N> :silent noh<CR>
"
" " Ctrol-E to switch between 2 last buffers
nmap <C-E> :b#<CR>
"
" " ,e to fast finding files. just type beginning of a name and hit TAB
nmap <leader>e :e **/
" ,n to get the next location (compilation errors, grep etc)
nmap <leader>n :cn<CR>
nmap <leader>N :cp<CR>

" use incsearch plugin as default search enging
map /  <Plug>(incsearch-forward)
