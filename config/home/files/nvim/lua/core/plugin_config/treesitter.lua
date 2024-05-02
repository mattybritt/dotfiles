require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "lua", "c_sharp", "vim", "markdown", "markdown_inline", "templ" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
