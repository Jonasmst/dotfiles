set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Handle plugins
Plugin 'baskerville/bubblegum' " Color theme
Plugin 'itchyny/lightline.vim' " Lightline
Plugin 'vim-scripts/Gundo' " Visual undo tree
Plugin 'vim-airline/vim-airline' " Airline
Plugin 'vim-airline/vim-airline-themes' " Color themes for airline
Plugin 'majutsushi/tagbar' " Tagbar (list of functions)
Plugin 'jiangmiao/auto-pairs' " Pare open brackets with closed ones
Plugin 'tpope/vim-surround' " Surround stuff with brackets etc.
Plugin 'airblade/vim-gitgutter' " Git info in gutter
Plugin 'scrooloose/nerdcommenter' " For commenting lines
Plugin 'scrooloose/nerdtree' " File tree
Plugin 'python-mode/python-mode' " Tons of python-stuff
" All of your plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on " required

" Preferences
set number " Always show line numbers
colorscheme bubblegum-256-dark " Use bubblegum colorscheme
syntax enable " Enable syntax highlighting
set tabstop=4 " Number of visual spaces per TAB
set softtabstop=4 " Number of spaces in TAB when editing
set expandtab " Tabs are spaces
set showcmd " Show command in bottom bar
set cursorline " Highlight current line
set wildmenu " Visual autocomplete for command menu
set lazyredraw " Redraw only when we need to
set showmatch " Highlight matching [{()}]
set incsearch " Search as characters are entered
set hlsearch " Highlight search matches
set foldenable " Enable folding
set foldlevelstart=99 " Open all folds by default
set foldnestmax=5 " 2 nested fold max
nnoremap <space> za " Space open/close folds
set foldmethod=indent " Fold based on indent level
nnoremap ^ <nop> " Disable old way of moving to beginning of line
nnoremap $ <nop> " Disable old way to move to end of line
nnoremap gV `[v`] " Highlight last inserted text
let mapleader="," " Leader is comma
nnoremap <leader>u :GundoToggle<CR> " Toggle undo
let g:lightline = {'colorscheme': 'wombat',} " Configure lightline
set laststatus=2 " Always show status line
highlight BadWhitespace ctermbg=red guibg=darkred " Flag trailing whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/ " Define whitepace
map Q <nop> " Disable ex mode (Q)
set nowrap " Don't wrap lines
set backspace=indent,eol,start " Smart backspace
let NERDTreeIgnore=['\.pyc$', '\~$'] " Hide pyc-files in NERDtree
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim " Enable powerline
let g:airline#extensions#tabline#enabled = 1 " Enable airline
let g:airline_powerline_fonts = 1 " Borrow fonts from powerline
let g:airline_theme='bubblegum' " Set airline color scheme
nmap <leader>t :TagbarToggle<CR> " Open tagbar with leader+t
noremap <leader>y "+y " Yank (copy) to system clipboard
noremap <leader>g ` " Jump to mark with leader+g + mark
set scrolloff=9999 " Lines above/below cursor
set encoding=utf-8
let g:pymode_lint_ignore="E501,W601" " Ignore certain PEPs, e.g. those complaining about too long lines

" Jump to the last position when reopening a file
if has("autocmd")
        au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
                                \| exe "normal! g`\"" | endif
endif

" Python-specific stuff
au BufNewFile,BufRead *.py
    \ set textwidth=999
