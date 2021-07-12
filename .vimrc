syntax on
set number relativenumber
set noswapfile
set hlsearch
set ignorecase
set incsearch
set clipboard=unnamedplus
set mouse=a
set spell
set updatetime=1000

packadd termdebug

filetype plugin on
filetype indent on

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'chiel92/vim-autoformat'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'lervag/vimtex'
call plug#end()

" c file indent settings
autocmd FileType c setlocal shiftwidth=2 softtabstop=2 expandtab
" cpp file indent settings
autocmd FileType cpp setlocal shiftwidth=2 softtabstop=2 expandtab

" colors solarized settings
set background=dark
colorscheme solarized
hi SpellBad cterm=underline ctermfg=13
hi SpellCap cterm=underline ctermfg=13

" airline settings
let g:airline_theme = 'solarized'
let g:airline_solarized_bg = 'dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_symbols_ascii = 1

" autoformat settings
let g:formatdef_latexindent = '"latexindent -m"'
let g:formatters_tex = ['latexindent']
let g:formatters_python = ['yapf']
noremap <F3> :Autoformat<CR>

" ultisnips settings
let g:UltiSnipsExpandTrigger="<c-x>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" vimtex settings
if !exists('g:ycm_semantic_triggers')
	let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
set conceallevel=0

" ycm settings
nmap <leader>D <plug>(YCMHover)
