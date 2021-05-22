syntax on
set number relativenumber
set noswapfile
set hlsearch
set ignorecase
set incsearch
set clipboard=unnamedplus
set mouse=a
set spell

packadd termdebug

filetype plugin on
filetype indent on

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'chiel92/vim-autoformat'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'vhdirk/vim-cmake'
call plug#end()

" cpp file indent settings
autocmd FileType cpp setlocal shiftwidth=2 softtabstop=2 expandtab

" nerdtree settings
let NERDTreeQuitOnOpen=1

" colors solarized settings
set background=dark
colorscheme solarized
hi SpellBad cterm=underline ctermfg=1
hi SpellCap cterm=underline ctermfg=1

" airline settings
let g:airline_theme = 'solarized'
let g:airline_solarized_bg = 'dark'
let g:airline#extensions#tabline#enabled = 1

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
