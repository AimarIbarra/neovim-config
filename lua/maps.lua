-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- movement between splits
map("n", "<Left>", "<C-w>h")
map("n", "<Right>", "<C-w>l")
map("n", "<Up>", "<C-w>k")
map("n", "<Down>", "<C-w>j")

-- nvim-tree
map("n", "<C-n>", ":NvimTreeToggle<CR>")

  -- development mode
map("n", "<F3>c", ":NvimTreeToggle<CR><C-w>l:COQnow<CR><CR>")

-- exiting all files
map("n", "<Leader>q", ":xa<CR>")
