local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

-- telescope.load_extension('media_files')
-- telescope.load_extension('telescope_project')

telescope.setup {
  defaults = {

    file_sorter = require('telescope.sorters').get_fzy_sorter,
    color_devicons = false,
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },

  },
  pickers = {
    current_buffer_fuzzy_find = {
        previewer = false
    }
  },
  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = {"png", "webp", "jpg", "jpeg"},
      find_cmd = "rg" -- find command (defaults to `fd`)
    },
    fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true,
    },
    conda = {
        home = '~/miniconda3/bin/python'
        },
    find_hidden = {
      hidden_files = true -- default: false
    }, -- Your extension configuration goes here:
    file_browser = {
        theme = "dropdown",
        previewer = false,
        hidden = true
    },
    workspaces = {
        keep_insert = false
    }
  }
}

require("telescope").load_extension "fzy_native"
require("telescope").load_extension "file_browser"
require("telescope").load_extension "workspaces"

