set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'etdev/vim-hexcolor.git'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'valloric/youcompleteme'
call vundle#end()            " required
filetype plugin indent on    " required
hi MatchParen cterm=bold ctermbg=black ctermfg=white
nnoremap <C-t> :NERDTreeToggle<CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif


" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
highlight YcmErrorSection ctermbg=red ctermfg=white
highlight YcmWarningSection ctermfg=yellow ctermbg=black guifg=yellow guibg=black
highlight Search ctermfg=black ctermbg=yellow
highlight Folder ctermbg=lightblue ctermfg=black
highlight DiffAdd ctermfg=black
highlight SpellCap ctermfg=Black
highlight DiffChange ctermfg=black ctermbg=darkred
highlight SpellRare ctermfg=black ctermbg=darkred
highlight ColorColumn ctermfg=black ctermbg=darkred
highlight SpellBad ctermfg=black ctermbg=darkred

let g:ycm_auto_hover=''
set signcolumn=yes
set tabstop=4
set expandtab
set ts=4 sw=4

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

iabbr psvm public static void main(String[] args){<CR>}<esc>O<c-r>=Eatchar('\m\s\<bar>/')<cr>
iabbr sysout System.out.println("");<esc>2hi<c-r>=Eatchar('\m\s\<bar>/')<cr>
iabbr sop System.out.println("");<esc>2hi<c-r>=Eatchar('\m\s\<bar>/')<cr>
iabbr syserr System.err.println("");<esc>2hi<c-r>=Eatchar('\m\s\<bar>/')<cr>
iabbr sep System.err.println("");<esc>2hi<c-r>=Eatchar('\m\s\<bar>/')<cr>
iabbr impsc import java.util.Scanner;<esc>o<c-r>=Eatchar('\m\s\<bar>/')<cr>

