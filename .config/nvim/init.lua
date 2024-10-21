-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  "chriskempson/base16-vim",
  "itchyny/lightline.vim",
  {
    dir = vim.fn.expand("$DOTFILES/opt/fzf"),
    cmd = "Coauthor",
    keys = {
      { "<C-p>", "<cmd>FZF<cr>", desc = "fzf" },
    },
    config = function()
      vim.api.nvim_create_user_command(
        "Coauthor",
        function()
          local buf = vim.api.nvim_get_current_buf()

          local coauthorline = function(author)
            local row, col = unpack(vim.api.nvim_win_get_cursor(0))

            vim.api.nvim_buf_set_lines(buf, row - 1, row - 1, true, { "Co-authored-by:" .. author })
          end

          vim.call("fzf#run", {
            source = "git shortlog -sne --all | awk '{$1=\"\"}1'",
            sink = coauthorline,
          })
        end,
        {bang=false}
      )
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",
    opts = {
      ensure_installed = {
        -- required per README
        "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline",
        "go",
        "javascript",
        "markdown",
        "ruby",
        "rust"
      },
      highlight = {
        enable = true,
      },
    }
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    opts = {
      multiline_threshold = 5,
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      lspconfig = require("lspconfig")
      lspconfig.ruby_lsp.setup{}
      lspconfig.rust_analyzer.setup{}
    end
  },
  {
    "mhinz/vim-signify",
    init = function()
      vim.g.signify_sign_add = "│"
      vim.g.signify_sign_delete = "│"
      vim.g.signify_sign_delete_first_line = "│"
      vim.g.signify_sign_change = "│"
      vim.g.signify_sign_change_delete = "│"
    end,
  }
}, {
  ui = {
    icons = {
      cmd = "⌘",
      config = "🛠",
      event = "📅",
      ft = "📂",
      init = "⚙",
      keys = "🗝",
      plugin = "🔌",
      runtime = "💻",
      require = "🌙",
      source = "📄",
      start = "🚀",
      task = "📌",
      lazy = "💤 ",
    },
  },
})

vim.filetype.add({
  extension = {
    ejson = 'json'
  }
})

vim.opt.laststatus = 2
vim.opt.mouse = "a"

vim.opt.number = true
vim.opt.relativenumber = true

-- Trigger async updates faster
vim.opt.updatetime = 100

-- Keymapping timeout
vim.opt.timeout = true
vim.opt.timeoutlen = 3000
vim.opt.ttimeoutlen = 100

-- Text Formatting
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.tabstop = 2
vim.opt.textwidth = 80
vim.opt.wrap = false

vim.opt.termguicolors = true
vim.cmd "colorscheme base16-materia"
