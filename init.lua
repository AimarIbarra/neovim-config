vim.cmd([[
  set notimeout
  set encoding=utf-8
]])

-- home environment variable
HOME = os.getenv('HOME')

require 'settings'
require 'maps'

require 'plugins'

-- linting
require 'lspconfig'.ccls.setup{}
require 'lint'.linters_by_ft = {
  cpp = {'clangtidy',}
}

-- filesystem
require 'tree'

local cmd = vim.cmd
cmd [[
  au BufWritePost <buffer> lua require('lint').try_lint()
]]

cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
