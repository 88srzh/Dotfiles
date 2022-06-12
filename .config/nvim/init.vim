call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
" file and folder management
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" language support
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" dart
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

" snippets
Plug 'natebosch/dartlang-snippets'
" Plug 'neovim/nvim-lspconfig'
" Plug 'hrsh7th/nvim-cmp'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'saadparwaiz1/cmp_luasnip'
" Plug 'L3MON4D3/LuaSnip'
" Plug 'scrooloose/nerdtree'


" color schemas
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

let g:lsc_auto_map = v:true

" enable html syntax highlighting inside dart strings
let dart_html_in_string=v:true

set number
set relativenumber

set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4

set textwidth=120

" hide buffers instead of saving
set hidden

" flash screen instead of sound
set novisualbell

set wrap
set linebreak

set showtabline=1

set termencoding=utf-8

set backspace=indent,eol,start whichwrap+=<,>,[,]

" encoding
set encoding=utf-8
set fileencoding=utf-8

" better splits
set splitbelow
set splitright

" disable backups (because of coc plugin)
set nobackup
set nowritebackup
set noswapfile

" use system clipboard
set clipboard=unnamedplus

" disable status
set noshowmode

set mousehide
set mouse=a

" colors
set termguicolors
set background=dark
colorscheme dracula
"highlight link HighlightedyankRegion Search
"exe 'hi CursorLine ctermbg=0 guibg='.g:color0.' ctermfg=NONE guifg=NONE'

" display diagnostic messages early
set updatetime=300

set showcmd

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

let mapleader=","

" flutter
nnoremap <leader>fe :CocCommand flutter.emulators <CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-c> :NERDTreeToggle<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fa :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fr :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>
nnoremap <leader>fD :FlutterVisualDebug

let g:dart_format_on_save = 1
let g:dartfmt_options = ['--fix', '--line-length 120']

nmap <C-P> :FZF<CR>

" coc config
let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-eslint',
    \ 'coc-prettier',
    \ 'coc-json',
    \ 'coc-flutter',
    \ 'coc-yaml',
    \ 'coc-css',
    \ 'coc-html'
    \    ]

set nocompatible
filetype plugin on
syntax on

" Goyo settings
function! s:goyo_enter()
  if has('gui_running')
    set fullscreen
    set background=light
    set linespace=7
  elseif exists('$TMUX')
    silent !tmux set status off
  endif
endfunction

function! s:goyo_leave()
  if has('gui_running')
    set nofullscreen
    set background=dark
    set linespace=0
  elseif exists('$TMUX')
    silent !tmux set status on
  endif
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
