{
  programs.nixvim = {
    plugins.trouble = {
      enable = true;
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>xx";
        action = "<cmd>Trouble diagnostics<cr>";
      }
      {
        mode = "n";
        key = "<leader>xw";
        action = "<cmd>TroubleToggle workspace_diagnostics<cr>";
      }
      {
        mode = "n";
        key = "<leader>xd";
        action = "<cmd>TroubleToggle document_diagnostics<cr>";
      }
      {
        mode = "n";
        key = "<leader>xl";
        action = "<cmd>TroubleToggle loclist<cr>";
      }
      {
        mode = "n";
        key = "<leader>xq";
        action = "<cmd>TroubleToggle quickfix<cr>";
      }
      {
        mode = "n";
        key = "gR";
        action = "<cmd>TroubleToggle lsp_references<CR>";
      }
    ];
  };
}
