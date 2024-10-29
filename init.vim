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
nnoremap <A-,> :BufferPrevious<CR>
nnoremap <A-.> :BufferNext<CR>
nnoremap <A-<> :BufferMovePrevious<CR>
nnoremap <A->> :BufferMoveNext<CR>
nnoremap <A-1> :BufferGoto 1<CR>
nnoremap <A-2> :BufferGoto 2<CR>
nnoremap <A-3> :BufferGoto 3<CR>
nnoremap <A-4> :BufferGoto 4<CR>
nnoremap <A-5> :BufferGoto 5<CR>
nnoremap <A-6> :BufferGoto 6<CR>
nnoremap <A-7> :BufferGoto 7<CR>
nnoremap <A-8> :BufferGoto 8<CR>
nnoremap <A-9> :BufferGoto 9<CR>
nnoremap <A-0> :BufferLast<CR>
nnoremap <A-p> :BufferPin<CR>
nnoremap <A-c> :BufferClose<CR>
nnoremap <A-s-c> :BufferRestore<CR>

" File format plugins for programming languages
Plug 'honza/vim-snippets'                                 " Code snippets for many languages
Plug 'rust-lang/rust.vim'                                 " Rust support
Plug 'fatih/vim-go'                                       " Go development plugin

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

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
inoremap <expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Mapping for opening/closing NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Gutentags
" Don't load me if there's no ctags file
if !executable('ctags')
    let g:gutentags_dont_load = 1
endif
