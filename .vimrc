let mapleader=","

set nocompatible  "Use Vim settings, rather then Vi settings (much better!).
filetype off      " required

" theme
syntax   on       " syntax highlight

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Editor's plugins
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'kien/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mbbill/undotree'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'joshdick/onedark.vim'

" Lang's plugins
Plugin 'tmhedberg/matchit'
Plugin 'godlygeek/tabular'
Plugin 'mattn/emmet-vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'thoughtbot/vim-rspec'
Plugin 'elixir-lang/vim-elixir'
Plugin 'fatih/vim-go'
Plugin 'szw/vim-tags' "go-to-definition
Plugin 'shime/vim-livedown' "markdown

call vundle#end()            " required
filetype plugin indent on    " required

" Options
set showcmd         "show incomplete cmds down the bottom
set showmode        "show current mode down the bottom
set incsearch       "find the next match as we type the search
set hlsearch        "hilight searches by default
set nowrap          "dont wrap lines
set mouse=a         "some stuff to get the mouse going in term
set t_Co=256        "tell the term has 256 colors
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set nobackup
set noswapfile
set nu
set cursorcolumn
set guifont=Inconsolata\ Bold\ 20
set clipboard=unnamedplus
set ttyfast

" Themes
colorscheme onedark

" Disable gui options
if has('gui_running')
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar
endif

" key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

""" Plugins Configuration

" NERDTree options
nmap <silent> \p :NERDTreeToggle<CR>

" BufExplorer options
nmap <silent> <C-b> :BufExplorer<CR>

" vim-rspec mappings
let g:rspec_command = "!bundle exec rspec {spec}"

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Undotree mappings
nmap <silent> <Leader>u :UndotreeToggle<CR>

let NERDTreeShowHidden=1

"hardcore mode :P
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Right> <Nop>
noremap <Left> <Nop>
