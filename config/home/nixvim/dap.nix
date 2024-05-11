{
  programs.nixvim = {
    plugins.dap = {
      enable = true;
    };
    keymaps = [
         {
          mode = "n";
          key = "<leader>dt";
          action = "<cmd>DapUiToggle<CR>";
        }
        {
          mode = "n";
          key = "<leader>db";
          action = "<cmd>DapToggleBreakpoint<CR>";
        }
        {
          mode = "n";
          key = "<leader>dc";
          action = "<cmd>DapContinue<CR>";
        }
    ];
  };
}
