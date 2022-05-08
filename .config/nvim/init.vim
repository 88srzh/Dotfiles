call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/neoclide/coc.nvim'
" Plug 'neovim/nvim-lspconfig'
" Plug 'hrsh7th/nvim-cmp'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'saadparwaiz1/cmp_luasnip'
" Plug 'L3MON4D3/LuaSnip'
" Plug 'scrooloose/nerdtree'


" color schemas
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

set number
set relativenumber

set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4


" hide buffers instead of saving
set hidden

" flash screen instead of sound
set visualbell

" encoding
set encoding=utf-8
set fileencoding=utf-8

" better splits
set splitbelow
set splitright

" disable backups (because of coc plugin)
set nobackup
set nowritebackup

" use system clipboard
set clipboard=unnamedplus

" disable status
set noshowmode

" colors
set termguicolors
set background=dark
colorscheme dracula
"highlight link HighlightedyankRegion Search
"exe 'hi CursorLine ctermbg=0 guibg='.g:color0.' ctermfg=NONE guifg=NONE'

" display diagnostic messages early
set updatetime=300

" unsure
set shortmess+=c

" show info and line columns on the left
set signcolumn=yes
highlight clear signcolumn

" highlight current line
set cursorline

" spaces by default
set et sw=4 sts=4 ts=4

" clear last search patters by hitting ESC in normal mode
nnoremap <ESC> :noh<CR><ESC>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-c> :NERDTreeToggle<CR>

