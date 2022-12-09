local op = vim.opt
local cm = vim.cmd
local ag = vim.api.nvim_create_augroup
local au = vim.api.nvim_create_autocmd

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
    relativenumber = true,
    wrap = true,
    scrolloff = 8,
    sidescrolloff = 8,
    linebreak = true,
    mouse = 'a',
    signcolumn = "auto"
}
for k, v in pairs(options) do
    op[k] = v
end

op.fillchars:append { eob = ' ' }
op.shortmess:append 'c'

---Highlight yanked text
au('TextYankPost', {
  group = ag('yank_highlight', {}),
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup='IncSearch', timeout=500 }
  end,
})

cm [[
    set background=dark
    set title
    let g:netrw_banner=0
    let g:vimtex_quickfix_ignore_filters = [
        \ 'Underfull',
        \ 'Overfull',
        \ 'beamerthememetropolis',
        \ 'inputenc Warning',
        \]
]]


