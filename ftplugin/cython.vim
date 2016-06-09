if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

" Behaves just like Python
runtime! ftplugin/python.vim ftplugin/python_*.vim ftplugin/python/*.vim

" Use cython to compile the file
let g:cython_compile_options = get(g:, 'cython_compile_options', [
      \ '--embed-positions',
      \ '--fast-fail',
      \])
let &l:makeprg=printf(
      \ 'cython %s %%',
      \ join(g:cython_compile_options),
      \)

