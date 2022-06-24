-- Telescope
require('telescope').setup{
    defaults = {
        prompt_prefix = "$ ",
    },
    extensions = {
      theme = "ivy",
      file_browser = {
        hijack_netrw = true
      }
    }
}
require('telescope').load_extension('fzf')
require("telescope").load_extension "file_browser"
