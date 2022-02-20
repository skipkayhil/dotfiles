# dotfiles

## Install

```
git clone http://github.com/skipkayhil/dotfiles ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

### Bootstrap

- Symlinks `.zshenv` and `.config` into `$HOME` directory
- Clones the [Powerlevel10k](https://github.com/romkatv/powerlevel10k) and [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) submodules
- Prompts to install [vim-plug](https://github.com/junegunn/vim-plug)
- Prompts to install [asdf-vm](https://github.com/asdf-vm/asdf)

### Folders

- `.config` is for configuration files and is symlinked to `$HOME/.config`
- `bin` is for scripts and is added to `PATH`
- `opt` is for dependencies packaged as git submodules

### Inspiration

- [holman](https://github.com/holman/dotfiles)
- [andrewthauer](https://github.com/andrewthauer/dotfiles)
