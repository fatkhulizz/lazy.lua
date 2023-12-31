return {
  {
    "stevearc/oil.nvim",
    opts = {
      columns = {
        "icon",
        -- "permissions",
        -- "size",
        "mtime",
      },
      keymaps = {
        ["g?"] = "actions.show_help",
        ["<CR>"] = "actions.select",
        ["L"] = "actions.select",
        ["<C-s>"] = "actions.select_vsplit",
        ["<C-h>"] = "actions.select_split",
        ["<C-t>"] = "actions.select_tab",
        ["<C-p>"] = "actions.preview",
        ["<C-c>"] = "actions.close",
        ["q"] = "actions.close",
        ["<C-l>"] = "actions.refresh",
        ["-"] = "actions.parent",
        ["H"] = "actions.parent",
        ["_"] = "actions.open_cwd",
        ["`"] = "actions.cd",
        ["~"] = "actions.tcd",
        ["gs"] = "actions.change_sort",
        ["gx"] = "actions.open_external",
        ["g."] = "actions.toggle_hidden",
      },
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  -- { vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent dir" }) },
  { vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent dir" }) },
  { vim.keymap.set("n", "<leader>E", "<CMD>Oil .<CR>", { desc = "Open root dir" }) },
}
