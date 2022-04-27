-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '


-- Quick quit and write
map('n', '<leader>q', ':q<CR>')
map('n', '<leader>w', ':w<CR>')

-- Terminal mappings
map('t', '<Esc>', '<C-\\><C-n>')                    -- exit

-- NvimTree
map('n', '<leader>nt', ':NvimTreeToggle<CR>')            -- open/close

-- Telescope
map("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>")
map("n", "<c-t>", "<cmd>Telescope live_grep<cr>")
