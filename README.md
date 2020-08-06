# dotfiles
## Install
```
git clone http://github.com/skipkayhil/dotfiles ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

### Bootstrap
- Symlinks all of the `*.symlink` files into the `$HOME` directory (`.zshrc`, `.config`, etc.)
- Clones the [Powerlevel10k](https://github.com/romkatv/powerlevel10k) and [fast-syntax-highlighting](https://github.com/zdharma/fast-syntax-highlighting) submodules
- Prompts to install [dein.vim](https://github.com/Shougo/dein.vim)
- Prompts to install [asdf-vm](https://github.com/asdf-vm/asdf)

### Folders
- `bin` is for scripts and is added to `PATH`
- `config.symlink` is for configuration files and is symlinked to `$HOME/.config`
- `opt` is for dependencies packaged as git submodules

### Bad Hacks
- If on Mac, create a `~/.zshenv` with the following:
```sh
if [[ ! -z $TMUX ]]; then
    PATH=""
fi
```
This unsets the path inside TMUX so that `path_helper` doesn't rearrange the `PATH`

### Inspiration

- [holman](https://github.com/holman/dotfiles)
- [andrewthauer](https://github.com/andrewthauer/dotfiles)
