call denite#custom#var('file/rec', 'command',
    \ ['rg', '--files', '--glob', '!.git', '--color', 'never'])
call denite#custom#var('grep', {
    \ 'command': ['rg', '--threads', '1'],
    \ 'recursive_opts': [],
    \ 'final_opts': [],
    \ 'separator': ['--'],
    \ 'default_opts': ['--smart-case', '--vimgrep', '--no-heading'],
    \ })

if has('nvim')
  call denite#custom#option('default', {
        \ 'source_names': 'short',
        \ 'split': 'floating',
        \ })
else
  call denite#custom#option('default', {
        \ 'source_names': 'short',
        \ })
endif
