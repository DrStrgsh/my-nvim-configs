call plug#begin()
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-endwise'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'machakann/vim-highlightedyank'
Plug 'skalnik/vim-vroom'
Plug 'mhinz/vim-startify'
Plug 'cakebaker/scss-syntax.vim'

" JS
Plug 'sheerun/vim-polyglot'

" autocomplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Python
Plug 'vim-python/python-syntax'
Plug 'davidhalter/jedi-vim'

" colorschame
Plug 'ErichDonGubler/vim-sublime-monokai'

call plug#end()

color sublimemonokai

syntax on
set number
set mouse=a
set t_Co=256
set wildignore+=*\\node_modules\\*
set cursorline
set expandtab ts=2 sw=2 ai
set showtabline=2
set termguicolors
set nocompatible
set encoding=UTF-8
let g:mapleader=','
set splitright
set splitbelow
set hlsearch
set noruler
set noswapfile
set clipboard=unnamed
set linebreak
set nohidden
set wildmenu
set showcmd
set list
set breakindent
set nobackup
set scrolloff=3
set updatetime=100

" Terminal-NVim

tnoremap <Esc> <C-\><C-n>

map <C-p> :Files<CR>
map <C-\> :NERDTreeToggle<CR>
map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

" Buffer
nnoremap <S-right> :bn<CR>
nnoremap <S-left> :bp<CR>
nnoremap <C-w> :bw<CR>

map ; <Plug>(easymotion-bd-f)
nmap ; <Plug>(easymotion-overwin-f)

map <C-_> ,ci

nnoremap <C-down> :m .+1<CR>==
nnoremap <C-up> :m .-2<CR>==
inoremap <C-down> <Esc>:m .+1<CR>==gi
inoremap <C-up> <Esc>:m .-2<CR>==gi
vnoremap <C-down> :m '>+1<CR>gv=gv
vnoremap <C-up> :m '<-2<CR>gv=gv

nnoremap > >>_
nnoremap < <<_
inoremap <S-Tab> <C-D>
vnoremap < <gv
vnoremap > >gv

function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction

" Python
let g:python_highlight_all = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'

" ALE
let g:ale_fix_on_save = 1
let g:lint_on_insert_leave = 1
let g:lint_on_text_changed = 0

let NERDTreeShowHidden=1

let g:deoplete#enable_at_startup = 1

"let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
