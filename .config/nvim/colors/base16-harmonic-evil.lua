vim.cmd("hi clear")
vim.g.colors_name = 'base16-harmonic-evil'

local colors = {
    base00 = '#2b2e3b', base01 = '#474a58', base02 = '#666978', base03 = '#808393',
    base04 = '#b5b9ca', base05 = '#cacedf', base06 = '#dfe3f4', base07 = '#f0f3ff',
    base08 = '#fc8083', base09 = '#fba581', base0A = '#e3cd94', base0B = '#a9c470',
    base0C = '#92ddce', base0D = '#9fd5fc', base0E = '#afb5ff', base0F = '#f0a1d6'
}

local scheme = require('base16-colorscheme')
scheme.setup(colors)

local hi = scheme.highlight

-- set_default_hl('MiniStatuslineModeInsert',  { link = 'DiffChange' })
-- hi.DiffChange                         = { guifg = M.colors.base03, guibg = M.colors.base00, gui = nil, guisp = nil, ctermfg = M.colors.cterm03, ctermbg = M.colors.cterm00 }
hi.DiffChange = { guifg = colors.base03, guibg = colors.base00, gui = nil, guisp = nil, ctermfg = colors.cterm03, ctermbg = colors.cterm00 }
-- set_default_hl('MiniStatuslineModeVisual',  { link = 'DiffAdd' })
-- hi.DiffAdd                            = { guifg = M.colors.base0B, guibg = M.colors.base00, gui = nil, guisp = nil, ctermfg = M.colors.cterm0B, ctermbg = M.colors.cterm00 }
hi.DiffAdd = { guifg = colors.base0B, guibg = colors.base00, gui = nil, guisp = nil, ctermfg = colors.cterm0B, ctermbg = colors.cterm00 }
-- set_default_hl('MiniStatuslineModeReplace', { link = 'DiffDelete' })
-- hi.DiffDelete                         = { guifg = M.colors.base08, guibg = M.colors.base00, gui = nil, guisp = nil, ctermfg = M.colors.cterm08, ctermbg = M.colors.cterm00 }
hi.DiffDelete = { guifg = colors.base08, guibg = colors.base00, gui = nil, guisp = nil, ctermfg = colors.cterm08, ctermbg = colors.cterm00 }
-- set_default_hl('MiniStatuslineModeCommand', { link = 'DiffText' })
-- hi.DiffText                           = { guifg = M.colors.base0D, guibg = M.colors.base00, gui = nil, guisp = nil, ctermfg = M.colors.cterm0D, ctermbg = M.colors.cterm00 }
hi.DiffText = { guifg = colors.base0D, guibg = colors.base00, gui = nil, guisp = nil, ctermfg = colors.cterm0D, ctermbg = colors.cterm00 }
