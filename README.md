# dotfiles
## Install
```
git clone http://github.com/skipkayhil/dotfiles ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

### Bootstrap
- Symlinks all of the `*.symlink` files into the `$HOME` directory (`.zshrc`, `.vimrc`, `.config`, etc.)
- Clones the [Powerlevel10k](https://github.com/romkatv/powerlevel10k) and [fast-syntax-highlighting](https://github.com/zdharma/fast-syntax-highlighting) submodules
- Prompts to install [dein.vim](https://github.com/Shougo/dein.vim)
- Prompts to install [asdf-vm](https://github.com/asdf-vm/asdf)
