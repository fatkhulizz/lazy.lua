return {
  {
    "j-morano/buffer_manager.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    opts = {
      select_menu_item_commands = {
        v = {
          key = "<C-v>",
          command = "vsplit",
        },
        h = {
          key = "<C-h>",
          command = "split",
        },
      },
      focus_alternate_buffer = false,
      short_file_names = true,
      short_term_names = true,
      loop_nav = false,
    },
    config = function()
      local opts = { noremap = true }
      local map = vim.keymap.set
      local bmui = require("buffer_manager.ui")
      local keys = "1234567890"
      for i = 1, #keys do
        local key = keys:sub(i, i)
        map("n", string.format("<leader>%s", key), function()
          bmui.nav_file(i)
        end, opts)
      end
      -- Just the menu
      map({ "t", "n" }, "<Tab>", bmui.toggle_quick_menu, { desc = "open buffer manager" })
      -- Open menu and search
      map({ "t", "n" }, "<M-m>", function()
        bmui.toggle_quick_menu()
        -- wait for the menu to open
        vim.defer_fn(function()
          vim.fn.feedkeys("/")
        end, 50)
      end, { desc = "open buffer manager and search" })
      -- Next/Prev
      map("n", "<M-j>", bmui.nav_next, opts)
      map("n", "<M-k>", bmui.nav_prev, opts)
    end,
  },
}
