set nocompatible
set packpath=~/.dotfiles/vim

" theme
syntax on
colorscheme monokai
set termguicolors
set guifont=Fira\ Code\ 12

" settings
set hidden
set nowrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set showmatch
set ignorecase
set smartcase
set smarttab
set scrolloff=10
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak
set title
set autoread
set tildeop
set laststatus=2
set encoding=utf8
set termencoding=utf-8
set fileencoding=utf8
set whichwrap+=<,>,h,l,[,]
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" hotkeys
let mapleader=","
set pastetoggle=<leader>p
nmap <silent> <leader>/ :nohlsearch<CR>
nmap <leader>w :set wrap!<CR>
nmap <leader>. :bp<CR>
nmap <leader>- :bn<CR>
nmap <leader>l <C-w>l
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>d :bd!<CR>
nmap <leader>e :bd!<CR>:e
nmap <leader>z :set list!<CR>
nnoremap t <C-]>
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

" aliases
cmap w!! w !sudo tee % >/dev/null

" vim-signify
let g:signify_vcs_list = ['git']
let g:signify_cursorhold_insert = 1   
let g:signify_cursorhold_normal = 1
let g:signify_update_on_bufenter = 0
let g:signify_update_on_focusgained = 1
nmap <leader>n <plug>(signify-next-hunk)
nmap <leader>N <plug>(signify-prev-hunk)
nmap <leader>s :SignifyToggle <CR>:set nu!<CR>

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline_section_y=""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#checks = [ 'indent', 'long', 'trailing'] 
