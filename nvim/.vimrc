unlet! skip_defaults_vim

set number
set cindent
set relativenumber
set mouse=a
set tabstop=4
set shiftwidth=4
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set encoding=utf-8
set showmatch
set laststatus=2
set noshowmode
" set complete+=kspell
" set completeopt=menuone,longest
set shortmess+=c
set cursorline
set updatetime=300
set modifiable
:setlocal spell spelllang=es
set nospell
set list lcs=tab:\|\ 
augroup AutoSaveFolds
	autocmd!
	au BufWinLeave ?* mkview 1
	au BufWinEnter ?* :silent! loadview 1
augroup END

call plug#begin('~/.vim/plugged')
"" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
"Plug 'rakr/vim-one'
"" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mg979/vim-visual-multi', {'branch' : 'master'}
Plug 'tpope/vim-surround'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-scripts/AutoComplPop'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch' : 'release'}
" Plug 'OmniSharp/omnisharp-vim'
"" Status bar
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
""Commentary
Plug 'tpope/vim-commentary'
"" Icons
Plug 'ryanoasis/vim-devicons'
"" Code display
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'sheerun/vim-polyglot'
Plug 'luochen1990/rainbow'
Plug 'nathanaelkane/vim-indent-guides'
"" Code help
Plug 'tmsvg/pear-tree'
Plug 'alvan/vim-closetag'
Plug 'tweekmonster/braceless.vim'
"" Git
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/vim-gitbranch'
Plug 'tpope/vim-fugitive'
"" Latex
Plug 'lervag/vimtex'
call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
highlight Normal ctermbg=NONE
set background=dark

let NERDTreeQuitOnOpen=1

let g:lightline = {}
" let g:lightline.colorscheme = 'gruvbox'
let g:lightline.component_expand = {
			\ 'linter_checking': 'lightline#ale#checking',
			\ 'linter_infos': 'lightline#ale#infos',
			\ 'linter_warnings': 'lightline#ale#warnings',
			\ 'linter_errors': 'lightline#ale#errors',
			\ 'linter_ok': 'lightline#ale#ok',
			\ }
let g:lightline.component_type = {
			\ 'linter_checking': 'right',
			\ 'linter_infos': 'right',
			\ 'linter_warnings': 'warning',
			\ 'linter_errors': 'error',
			\ 'linter_ok': 'right',
			\ }

let g:lightline.active = {
			\ 'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
			\ 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
			\ }
let g:lightline.component_function = {
\ 'gitbranch': 'GitBranch'
\ }
let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_infos = "\uf129"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

let g:cpp_no_function_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

let g:rainbow_active = 1

" let g:indent_guides_enable_on_vim_startup = 1

let g:pear_tree_repeatable_expand = 0

let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['red', 'blue', 'yellow', 'green', 'cyan', 'magenta'],
\}

let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

autocmd FileType python BracelessEnable +fold
autocmd FileType json syntax match Comment +\/\/.\+$+


function! GitBranch()
	if (gitbranch#name() ==# '')
		return ""
	else
		return "\ue0a0 " . gitbranch#name()
	endif
endfunction

source /home/daniel/.config/nvim/coc.vimrc
