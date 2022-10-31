-- Configuration file from ChrisAtMachine
-- Source: https://github.com/LunarVim/Neovim-from-scratch/tree/03-plugins

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}


-- Install your plugins here
return packer.startup(function(use)

    -- My plugins here
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim" -- Useful lua functions used by lots of plugins
    use "tpope/vim-surround" -- Surround selected with brackets, quotes, etc.
    use "akinsho/toggleterm.nvim" -- terminal inside neovim
    use "lukas-reineke/indent-blankline.nvim" -- indentation guide

    -- Commenting
    use "numToStr/Comment.nvim" -- commenting tool
    use "JoosepAlviste/nvim-ts-context-commentstring"

    -- Colorschemes
    use "marko-cerovac/material.nvim"
    use "folke/tokyonight.nvim"
    use "rafamadriz/neon"
    use "ellisonleao/gruvbox.nvim"
    -- use "datsudo/gruvbox.nvim"

    -- Completion
    use "hrsh7th/nvim-cmp" -- completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completion
    use "hrsh7th/cmp-path" -- path completion
    use "hrsh7th/cmp-cmdline" -- command completion
    use "hrsh7th/cmp-nvim-lsp" -- completion for LSP
    use "hrsh7th/cmp-nvim-lua" -- completion for LSP
    use "saadparwaiz1/cmp_luasnip" -- snippet completion

    -- Buffers
    use "akinsho/bufferline.nvim"
    use "moll/vim-bbye"

    -- Snippets
    use "L3MON4D3/LuaSnip" -- snippet engine
    use "rafamadriz/friendly-snippets" -- snippets collection

    -- LSP
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/nvim-lsp-installer" -- language server installer

    -- Telescope
    use "nvim-telescope/telescope.nvim" -- fuzzy search tool
    use "nvim-telescope/telescope-file-browser.nvim"
    use "nvim-telescope/telescope-fzy-native.nvim"

    -- Devicons
    use "kyazdani42/nvim-web-devicons"

    -- Syntax highlighting
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }

    -- File explorer
    use "kyazdani42/nvim-tree.lua"

    -- Status line
    use "nvim-lualine/lualine.nvim"

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)

