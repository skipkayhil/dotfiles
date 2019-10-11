let g:dein#auto_recache = 1

let s:path = expand('$HOME/.cache/dein')
if !dein#load_state(s:path)
  finish
endif

let s:dein_toml = expand('$DOTFILES/vim/rc/dein.toml')
" let s:dein_lazy_toml = expand('$DOTFILES/vim/rc/deinlazy.toml')

call dein#begin(s:path, [expand('<sfile>'), s:dein_toml])

call dein#load_toml(s:dein_toml)
" call dein#load_toml(s:dein_lazy_toml, {'lazy' : 1})

call dein#end()
call dein#save_state()

if !has('vim_starting') && dein#check_install()
  " Installation check.
  call dein#install()
endif
