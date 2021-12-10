"NERD TREE
"let g:NERDTreeDirArrowExpandable = ''
"let g:NERDTreeDirArrowCollapsible = ''

" if vim is opened with no files, execute NerdTree.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" if vim is opened with directory, execute NerdTree with the directory.
" there is bug..
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif


function! NERDTreeYankCurrentNode()
    let n = g:NERDTreeFileNode.GetSelected()
    if n != {}
        call setreg('"', n.path.str())
    endif
endfunction


autocmd VimEnter * call NERDTreeAddKeyMap({
        \ 'key': 'yy',
        \ 'callback': 'NERDTreeYankCurrentNode',
        \ 'quickhelpText': 'put full path of current node into the default register' })


" Airline Theme
let g:airline_theme='zenburn'
let g:airline#extensions#tabline#enabled=1
set laststatus=1

"Solarized
let g:solarized_termcolors=256

"fzf setting
nnoremap <C-p> :Files<Cr>


"ultisnip, setting python
" python 
"let g:python_host_prog = trim('/usr/bin/' . system('readlink /usr/bin/python'))
"let g:python3_host_prog = trim('/usr/bin/' . system('readlink /usr/bin/python3'))
