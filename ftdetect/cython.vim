" overwrite filetype only when the filetype is pyrex
function! s:overwrite_filetype() abort
  if empty(&filetype) || &filetype ==# 'pyrex'
    setlocal filetype=cython
  endif
endfunction

" Cython
" https://docs.cython.org/src/userguide/language_basics.html
autocmd BufNewFile,BufRead *.pyx call s:overwrite_filetype()  " Implementation file
autocmd BufNewFile,BufRead *.pxd call s:overwrite_filetype()  " Definition file
autocmd BufNewFile,BufRead *.pxi call s:overwrite_filetype()  " Include files

" pyximport
" https://github.com/cython/cython/blob/master/pyximport/pyximport.py
autocmd BufNewFile,BufRead *.pyxdep setfiletype python
autocmd BufNewFile,BufRead *.pyxbld setfiletype python
