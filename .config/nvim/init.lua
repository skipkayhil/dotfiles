vim.cmd('source ' .. vim.env.XDG_CONFIG_HOME .. '/vim/vimrc')

vim.filetype.add({
  extension = {
    ejson = 'json'
  }
})

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
