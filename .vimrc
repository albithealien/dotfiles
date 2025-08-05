" Settings
set autoread
set clipboard=unnamedplus
set expandtab smarttab tabstop=4 shiftwidth=4
set formatoptions-=cro
set guicursor=n-v-c-i:block 
set ignorecase hlsearch incsearch 
set nobackup nowritebackup noswapfile
set noerrorbells novisualbell
set number scrolloff=10
set wrap

" Undo
set undodir=~/.undo
let undo_dir = has('vim') ? stdpath('data') . '/undo' : '~/.undo'
if !isdirectory(undo_dir)
  call mkdir(expand(undo_dir), 'p')
endif
set undofile

" Netrw
let g:netrw_banner = 0
let g:netrw_keepdir = 0

" Filetype
filetype plugin indent on

" Plugins
let minpac_dir = has('vim') ? stdpath('data') . '/site/pack/minpac/opt/minpac' : '~/.vim/pack/minpac/opt/minpac'
if empty(glob(minpac_dir))
  silent execute '!git clone https://github.com/k-takata/minpac.git ' . minpac_dir
endif
packadd minpac

call minpac#init()
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
command! PackStatus call minpac#status()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('mbbill/undotree')
call minpac#add('junegunn/fzf.vim')
call minpac#add('machakann/vim-sandwich')
call minpac#add('tpope/vim-commentary')
call minpac#add('vv9k/vim-github-dark')

" Mappings
let mapleader = " "
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <nop>
noremap <C-i> :nohlsearch<CR>
noremap <C-w>u :UndotreeShow 
noremap <leader>f :Files<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>g :GFiles<CR>
noremap <leader>t :Tags <CR>
noremap <leader>m :Marks<CR>
noremap <leader>w :w<CR>
noremap <leader>q :q!<CR>

" Colorscheme
syntax on
colorscheme ghdark
highlight Normal guibg=NONE ctermbg=NONE
