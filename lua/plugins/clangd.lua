-- return {}
return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    vim.list_extend(
      opts.servers.clangd.cmd,
      {
        "--log=verbose",
        -- fix for cross-compilation with arm-none-eabi
        -- this should be placed on .clangd files on root folder project
        -- but weirdly it show "unsupported option"
        "--query-driver=/usr/bin/arm-none-eabi-gcc",
      }
    )
  end,
}
