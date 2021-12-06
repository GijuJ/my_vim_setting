" Basic Setting
set nu
set relativenumber
set hlsearch " highlighting search
set incsearch " search with typing word.
set ruler " cursor location
set noswapfile "remove swp
set nobackup "remove backup file
set clipboard=unnamed " # save the copied value to clipboard.
syntax on

let mapleader=" " "set leader


" related to tab
set expandtab "tab -> space
set smartindent
set autoindent
set ts=4
set sw=4
set cindent "c style indent

au BufReadPost * "set cursor from read line.
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" related to history and undo
set history=1000
set undodir=~/.vim/undodir
set undofile

" buffer move setting
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

" setting status line
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"source configuration files
so ~/.vim/plugins.vim
so ~/.vim/plugins_config.vim

" Function key mapping with plugins. plugins_config do not have function key.
" toggle paste
nnoremap <leader>pt :set pastetoggle<CR>
"NerdTree toggle
nnoremap <leader>nt :NERDTreeToggle<CR>
"execute current file by #!/... binary file .
nnoremap <F12> :!./% <<CR>

" confirm quit
function! ConfirmQuit(writeFile)
    if (a:writeFile)
        if (expand('%:t')=="")
            echo "Can't save a file with no name."
            return
        endif
        :write
    endif

    if (winnr('$')==1 && tabpagenr('$')==1)
        if (confirm("Do you really want to quit?", "&Yes\n&No", 2)==1)
            :quit
        endif
    else
        :quit
    endif
endfu

