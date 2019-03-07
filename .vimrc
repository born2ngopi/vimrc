" Setup Vim Core
set number "Nomor Baris Statik
set relativenumber "Nomor Baris Dinamik
set nocompatible
set softtabstop=2
set backspace=indent,eol,start
filetype plugin indent on

set laststatus=2
set linespace=3
" set t_Co=256
" set term=screen-256color
set cursorline
set list
set nowrap
syntax on
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set noswapfile
set nowritebackup
set ruler
set showcmd
set incsearch
set autowrite
set autoread
set mousehide
set clipboard+=unnamedplus

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Numbers
set numberwidth=5
filetype off

" Vundle Plugin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'fatih/vim-go'

Plugin 'rust-lang/rust.vim'

Plugin 'gmarik/Vundle.vim'

Plugin 'bartmalanczuk/vim-trex-runner'
" added nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'vim-ruby/vim-ruby', { 'for': 'ruby' }

Plugin 'mhinz/vim-startify'
Plugin 'sickill/vim-pasta'
Plugin 'tommcdo/vim-exchange'

Plugin 'tmux-plugins/vim-tmux-focus-events'

"Tpope Plugin
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-rhubarb'

Plugin 'pangloss/vim-javascript'
" Plugin 'mxw/vim-jsx'


Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'airblade/vim-gitgutter'
Plugin 'benekastah/neomake'
Plugin 'benmills/vimux'
Plugin 'bogado/file-line'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'dyng/ctrlsf.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'elzr/vim-json', { 'for': 'json' }
Plugin 'gitignore.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'janko-m/vim-test'
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'christoomey/vim-run-interactive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pbrisbin/vim-mkdir'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'joshdick/onedark.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'edkolev/tmuxline.vim'
Plugin 'wakatime/vim-wakatime'
"64ede13d-508f-49da-a441-b88b9b5d4c38

Plugin 'ervandew/supertab'
Plugin 'Valloric/MatchTagAlways'

Plugin 'junegunn/goyo.vim'

Plugin 'drewtempelmeyer/palenight.vim'

call vundle#end()

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" todo
" command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw

nmap <C-n> :NERDTreeToggle<CR>

nmap <space> :
imap jj <esc>
nmap zz :w<CR>
nmap qq :q<CR>
"nmap <C-q> ddkkp<CR>

" scrolling dengan mouse
set mouse=a

" tampilan list pada pencarian di mode command
set wildmenu
set wildmode=list:longest,list:full
set wildignore=*.swp,*.bak,*.class,*.pyc

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

execute pathogen#infect()

" Configuration for vim-devicons
set guifont=Source\ Code\ Pro\ for\ Powerline\ File\ Types:h16
set encoding=utf-8
let g:airline_powerline_fonts = 1
" let g:WebDevIconsOS = 'Darwin'

" use double-width(1) or single-width(0) glyphs
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1

" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 0

" enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 0

" let g:syntastic_javascript_checkers = ['eslint']

" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

" set background=dark " for the dark version
" set background=light " for the light version
" color onedark
" color dracula

set background=dark
colorscheme palenight

nmap <F8> :TagbarToggle<CR>

" Setup Airline
let g:airline_theme = 'onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ' '
let g:airline_right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_powerline_fonts = 1


let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "@",
    \ "Renamed"   : "=>",
    \ "Unmerged"  : "=",
    \ "Deleted"   : "X",
    \ "Dirty"     : "x",
    \ "Clean"     : "^",
    \ "Unknown"   : "?"
    \ }

autocmd FileType nerdtree setlocal nolist

" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'


" Windows And Splits ------ {{{
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright
" }}}

" Search ------ {{{
nnoremap / /\v
vnoremap / /\v
set gdefault                          " Adds g at the end of substitutions by default
set hlsearch                          " Highlight searches
set ignorecase                        " Ignore case of searches
set smartcase
" }}}

let g:tmuxline_preset = 'nightly_fox'

let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

let g:airline#extensions#tmuxline#enabled = 0

" Tagbar Custom Tag
"
" For Markdown
let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }

" For Ruby
let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

" For CSS
let g:tagbar_type_css = {
\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }

" Go
let g:tagbar_type_go = {
    \ 'ctagstype': 'go',
    \ 'kinds' : [
        \'p:package',
        \'f:function',
        \'v:variables',
        \'t:type',
        \'c:const'
    \]
\}

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
" if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  " if (has("termguicolors"))
  ""  set termguicolors
  " endif
" endif
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

nmap <C-t> :bn<CR>

