local op = vim.opt
local cm = vim.cmd

-- :help options
local options = {
    fileencoding = 'utf-8',
    termguicolors = true,
    backup = false,
    swapfile = false,
    cmdheight = 2,
    pumheight = 10,
    showmode = true,
    showtabline = 2,
    completeopt = { 'menuone', 'noselect'},
    splitbelow = true,
    hlsearch = true,
    smartcase = true,
    ignorecase = true,
    conceallevel = 0,
    undofile = true,
    updatetime = 300,
    timeoutlen = 1000,
    writebackup = false,
    clipboard = 'unnamedplus',
    smartindent = true,
    expandtab = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    cursorline = true,
    number = true,
    relativenumber = false,
    wrap = true,
    scrolloff = 8,
    sidescrolloff = 8,
    mouse = 'a',
}
for k, v in pairs(options) do
    op[k] = v
end

op.fillchars:append { eob = ' ' }
op.shortmess:append 'c'

cm [[
    set background=dark
    set title
    let g:netrw_banner=0
]]


