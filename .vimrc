set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
nmap <C-F> <Plug>VimwikiTabnewLink

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Themes
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'kyoz/purify', {'rtp': 'vim/'}

" Productivity
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'leafgarland/typescript-vim'
Plugin 'kovisoft/slimv'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'pangloss/vim-javascript'
Plugin 'michaeljsmith/vim-indent-object'

Plugin 'elixir-editors/vim-elixir'
Plugin 'rust-lang/rust.vim'
Plugin 'Yggdroot/indentLine'

Plugin 'nvim-treesitter/nvim-treesitter'
Plugin 'neoclide/coc.nvim'
Plugin 'prettier/vim-prettier'

" Writing plugins
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'vimwiki/vimwiki'

call vundle#end()            " required

" My settings

let mapleader = "\<Space>"

filetype plugin indent on    " required

syntax on

set number
set ignorecase
set smartcase
set autoindent
set tabstop=2
set expandtab
set shiftwidth=2
set hidden
set wildignore=**/node_modules/**,**node_modules/,/node_modules/**

set diffopt+=vertical

nnoremap gt :bn <CR>
nnoremap gT :bp <CR>
nnoremap <leader>gt :tabnext <CR>
nnoremap <leader>gT :tabprev <CR>
nnoremap <leader>bd :bd <CR>
nnoremap <leader>ve :e $MYVIMRC <CR>
nnoremap <leader>vs :source $MYVIMRC <CR>


" Plugin Specific
"
" Vimwiki
let g:vimwiki_ext = '.md' " set extension to .md
let g:vimwiki_global_ext = 0 " make sure it doesn't think it owns the world

let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md', 'diary_rel_path' : ''}]

" CoC
" GoTo code navigation.
 nmap <silent> gd <Plug>(coc-definition)
 nmap <silent> gy <Plug>(coc-type-definition)
 nmap <silent> gi <Plug>(coc-implementation)
 nmap <silent> gr <Plug>(coc-references)

 nnoremap <silent><nowait> <leader>a :<C-u>CocList diagnostics<cr>
" Manage extensions.
 nnoremap <silent><nowait> <leader>c :<C-u>CocList commands<cr>
 nnoremap <silent><nowait> <leader>l :<C-u>CocDiagnostics<cr>
" vim-airline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'

" goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:limelight_conceal_ctermfg = 'grey'

" prettier
nnoremap <leader>p :Prettier<CR>

"FZF commands
nnoremap <C-p> :GFiles <CR>
nnoremap <C-l> :Buffers <CR>

let g:indentLine_setColors = 'SpecialKey'
colorscheme PaperColor
