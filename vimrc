


"                       plugins
" ---------------------------------------------------------------

"set nocompatible
"filetype off
" Set the runtime path to include plug and initialize
"set rtp+=~/.vim/autoload/plug.vim
" Download plug-ins to the ~/.vim/plugged/ directory
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'

"colors
Plug 'AlessandroYorba/Sierra'
Plug 'arcticicestudio/nord-vim'
Plug 'cocopon/iceberg.vim'
Plug 'Badacadabra/vim-archery'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'scheakur/vim-scheakur'
Plug 'morhetz/gruvbox'

Plug 'derekwyatt/vim-fswitch'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'dyng/ctrlsf.vim'
Plug 'derekwyatt/vim-protodef'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'rhysd/vim-clang-format'
"Plug 'wfxr/minimap.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'puremourning/vimspector'
Plug 'ilyachur/cmake4vim'
Plug 'ntpeters/vim-better-whitespace'
call plug#end()
filetype plugin indent on
" ---------------------------------------------------------------


source /home/aunai/.config/vim/gitgutter.vim
source /home/aunai/.config/vim/cmake4vim.vim
source /home/aunai/.config/vim/nerdtree.vim
source /home/aunai/.config/vim/cocvim.vim
source /home/aunai/.config/vim/tagbar.vim
source /home/aunai/.config/vim/ctrlsf.vim
source /home/aunai/.config/vim/vimspector.vim
source /home/aunai/.config/vim/stripwhitespace.vim
source /home/aunai/.config/vim/cocexplorer.vim






" this sets the relative line number
" only on the active buffer
set number relativenumber                               " line numbers
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

syntax on                                               " syntax colors
set nowrap                      " do not wrap lines at righ side terminal
let mapleader = " "             " user special key
set ruler                       " show cursor position in status bar
set showcmd                     " show typed command in status bar
set title                       " show file in title bar
set showmatch                   " show matching brackets
set showmode                    " show mode insert,replace etc. in status bar
set wildmenu                    " completion with menu
set laststatus=2                " use 2 lines for the status bar
set matchtime=2                 " show matching brackets for 0.2 seconds
set incsearch                   " incremental search
set noerrorbells                " no annoying sound on errors
set path+=/usr/include/**,.,**  " add current dir to path and subdirs recursively
set mouse=a                     " cool for scrolling
set scrolloff=10
set viewoptions-=options        " do not take options into acount when saving
set colorcolumn=80              " show column 80
highlight colorcolumn guibg=#A3D3DB
set clipboard=unnamed
set nohlsearch
set backspace=indent,eol,start
set background=dark
colorscheme gruvbox
set cursorline                  " highlight cursor line

" system settings
set hidden                      " remember undo after quitting
set history=100                 " keeps 100 lines of command history
set matchpairs+=<:>             " specifically for html


"Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" file name completion
set wildmenu                                            " set it on
set wildmode=longest,list                               " similar to the shell
set wildignore+=*.a,*.o,*.pyc                           " ignore those stupid files
set wildignore+=*.pyc
set wildignore+=**/coverage/*
set wildignore+=**/.git/*


" indentation
set tabstop=8                                           " tab is 8 spaces
set shiftwidth=4                                        " an indent is 4 spaces
set expandtab                                           " hitting tab will produce the appropriate # of spaces
set autoindent                                          " copy the indentation of the previous line to the current
set softtabstop=4
filetype plugin indent on


" terminal
set termwinsize=12x0   " Set terminal size
set splitbelow         " Always split below


" invisible characters
set list                                                " show them
set listchars=tab:\⇒\─,trail:\‣,extends:\↷,precedes:\↶  " how they appear



" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8


" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

"------------------------------------------------------------------------------

" transparent bg
"autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
" For Vim<8, replace EndOfBuffer by NonText
"autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE


function! ReTab()
  let &tabstop = &shiftwidth
  retab!
  let &tabstop = 8
endfunction



"---------------------minimap -----------------------
"let g:minimap_width = 10
"let g:minimap_auto_start = 0
"let g:minimap_auto_start_win_enter = 0
"-----------------------------------------------------

" folding  :http://www.linux.com/learn/tutorials/442438-vim-tips-folding-fun
set foldmethod=manual                                   " folding manually
"au BufWinLeave * mkview                                 " save the folds before leaving
"au BufWinEnter * silent loadview                        " restore folds when opening
set fdc =2                                              " put a vertical bar indicating where folds are







" cycling through buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>


" Edit Vim config file in a new tab.
map <Leader>ev :tabnew $MYVIMRC<CR>

" Source Vim config file.
map <Leader>sv :source $MYVIMRC<CR>



autocmd FileType cpp ClangFormatAutoEnable
let g:clang_format#detect_style_file=1
let g:clang_format#auto_format_on_insert_leave=1

" samrai C files recognized as cpp
autocmd BufReadPre *.C set ft=cpp
