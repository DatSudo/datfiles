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
    use "akinsho/toggleterm.nvim" -- Terminal inside neovim
    use "lukas-reineke/indent-blankline.nvim" -- Indentation guide
    use "lervag/vimtex" -- LaTeX support
    use "natecraddock/workspaces.nvim" -- Manages workspaces

    -- Run code
    use {"CRAG666/code_runner.nvim",
        requires = "nvim-lua/plenary.nvim"}

    -- Note taking
    use {"vimwiki/vimwiki",
        config = function()
            vim.g.vimwiki_list = {
            {
                path = "/home/datsudo/Documents/Notes/wiki",
                syntax = "markdown",
                ext = ".md"
            }
        }
        end}

    -- Greeter
    use {"goolord/alpha-nvim",
        requires = { "kyazdani42/nvim-web-devicons" },
        config = function ()
            require"alpha".setup(require"alpha.themes.startify".config)
        end}

    -- Markdown preview
    use {"iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" }}

    -- Commenting
    use "numToStr/Comment.nvim" -- Commenting tool
    use "JoosepAlviste/nvim-ts-context-commentstring"

    -- Colorschemes
    use "ellisonleao/gruvbox.nvim"

    -- Completion
    use "hrsh7th/nvim-cmp" -- Completion plugin
    use "hrsh7th/cmp-buffer" -- Buffer completion
    use "hrsh7th/cmp-path" -- Path completion
    use "hrsh7th/cmp-cmdline" -- Command completion
    use "hrsh7th/cmp-nvim-lsp" -- Completion for LSP
    use "hrsh7th/cmp-nvim-lua" -- Completion for LSP
    use "saadparwaiz1/cmp_luasnip" -- Snippet completion

    -- Buffers
    use "akinsho/bufferline.nvim"
    use "moll/vim-bbye"

    -- Snippets
    use "L3MON4D3/LuaSnip" -- Snippet engine
    use "rafamadriz/friendly-snippets" -- Snippets collection

    -- LSP
    use "neovim/nvim-lspconfig" -- Enable LSP
    use "williamboman/nvim-lsp-installer"

    -- Telescope
    use "nvim-telescope/telescope.nvim" -- Fuzzy search tool
    use "nvim-telescope/telescope-file-browser.nvim" -- File browser
    use "nvim-telescope/telescope-fzy-native.nvim" -- Fzf integration

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

