local cmd = vim.cmd

vim.g['nvim_tree_add_trailing'] = 1
vim.g['nvim_tree_group_empty'] = 1
require'nvim-tree'.setup {
  hijack_cursor = true,
  view = {
    width = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
  },
  actions = {
    open_file = {
      resize_window = true
    }
  }
}

cmd [[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]]
