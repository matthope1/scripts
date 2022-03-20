:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a


"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>


call plug#begin('~/.config/nvim/plugged')

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'tmsvg/pear-tree' "bracket completion
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'tribela/vim-transparent' " transparent

" typescript stuff
" Plug 'neovim/nvim-lspconfig'
" Plug 'jose-elias-alvarez/null-ls.nvim'
" Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'


call plug#end()

nmap <F12> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews



:colorscheme sonokai 
" :colorscheme minimalist 
" :colorscheme onedark 
" :colorscheme afterglow 

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"


