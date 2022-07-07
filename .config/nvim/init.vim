execute 'source' fnameescape(expand('$XDG_CONFIG_HOME/vim/vimrc'))

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "javascript",
    "markdown",
    "ruby",
    "rust"
  },
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF
