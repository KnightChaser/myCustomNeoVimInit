" Initialize vim-plug plugin manager for Neovim
call plug#begin('~/.config/nvim/plugged')

" Essential plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}           " Autocomplete and language server
Plug 'preservim/nerdtree'                                 " Sidebar file explorer
Plug 'vim-airline/vim-airline'                            " Status bar with themes
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }       " Fuzzy finder (for files and commands)
Plug 'junegunn/fzf.vim'                                   " FZF integration for Vim

" Syntax and highlighting
Plug 'sheerun/vim-polyglot'                               " Syntax highlighting for multiple languages
Plug 'dense-analysis/ale'                                 " Asynchronous linting and fixing

" Additional plugins for Neovim and specific languages
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Better syntax highlighting
Plug 'tpope/vim-commentary'                               " Commenting plugin
Plug 'tpope/vim-surround'                                 " Surround text objects with ease
Plug 'ludovicchabant/vim-gutentags'                       " Tag generation for code navigation
Plug 'shougo/denite.nvim'                                 " Powerful search and filtering interface

" Orderable tabline plugin
Plug 'nvim-tree/nvim-web-devicons'                        " OPTIONAL: for file icons
Plug 'lewis6991/gitsigns.nvim'                            " OPTIONAL: for git status
Plug 'romgrk/barbar.nvim'

" File format plugins for programming languages
Plug 'honza/vim-snippets'                                 " Code snippets for many languages
Plug 'rust-lang/rust.vim'                                 " Rust support
Plug 'fatih/vim-go'                                       " Go development plugin

call plug#end()

" Basic configurations for improved usability
set nocompatible              " Disable compatibility to old Vi
set number                    " Show line numbers
set relativenumber            " Relative line numbers
set autoindent                " Auto-indent new lines
set cursorline                " Highlight current line
set expandtab                 " Convert tabs to spaces
set tabstop=4                 " Number of spaces in a tab
set shiftwidth=4              " Spaces for each auto-indent step
set hlsearch                  " Highlight search results
set incsearch                 " Incremental search
set smartcase                 " Smart case search
set ignorecase                " Case-insensitive search
set wrap                      " Wrap long lines
set scrolloff=8               " Minimum lines to keep above/below the cursor
syntax on                     " Enable syntax highlighting

" Airline configuration
let g:airline#extensions#tabline#enabled = 1

" Neovim LSP and CoC settings for language support and autocompletion
let g:coc_global_extensions = ['coc-json', 'coc-python', 'coc-go', 'coc-tsserver', 'coc-clangd']
hi CocFloating ctermbg=DarkGrey
hi CocMenuSel ctermbg=Blue
hi CocSearch ctermfg=Cyan

" Key mappings for CoC autocompletion and commands
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Mapping for opening/closing NERDTree
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
