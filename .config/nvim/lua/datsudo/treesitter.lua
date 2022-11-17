local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup {
    ensure_installed = "all",
    sync_install = false,
    ignore_install = { "" }, -- List of parsers to ignore installing
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "latex" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = true,
    },
    context_commenstring = {
        enable = true,
        enable_autocmd = false
    },
    indent = { enable = false, disable = { "yaml", "latex" } },
}

