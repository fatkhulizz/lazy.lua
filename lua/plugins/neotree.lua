return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      hijack_netrw_behavior = "open_current",
    },
    window = {
      position = "current",
      mappings = {
        ["/"] = "none",
        ["h"] = "close_node",
        ["l"] = "open",
      },
    },
  },
}
