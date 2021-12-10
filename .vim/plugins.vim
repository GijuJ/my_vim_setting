set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    "NERDTree
    Plugin 'scrooloose/nerdtree'
    "theme
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'altercation/vim-colors-solarized'
    " related to fzf
    Plugin 'junegunn/fzf'
    Plugin 'junegunn/fzf.vim'
    "snippet
    "Plugin 'SirVer/ultisnips'
    "Plugin 'honza/vim-snippets'
call vundle#end()

filetype plugin indent on

