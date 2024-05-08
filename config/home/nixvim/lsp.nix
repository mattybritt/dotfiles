{ ... }:

{
  programs.nixvim.plugins.lsp = {
    enable = true;
  };
}

  # TODO
  # vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  # vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
  # vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
  # vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
  # vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  #
  # vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
