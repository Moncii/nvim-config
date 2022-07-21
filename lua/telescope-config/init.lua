require("telescope").load_extension "file_browser"

local fb_actions = require "telescope".extensions.file_browser.actions
-- mappings in file_browser extension of telescope.setup
mappings = {
        ["i"] = {
          -- remap to going to home directory
          ["<C-h>"] = fb_actions.goto_home_dir,
          -- ["<C-x>"] = function(prompt_bufnr)
          ["<C-r>"] = fb_actions.rename,
            -- your custom function
        },
        ["n"] = {
          -- unmap toggling `fb_actions.toggle_browser`
          f = false,
        },
}
