{
  programs.nixvim = {
    plugins.dap = {
      enable = true;
      extensions= {
        dap-ui.enable = true;
        dap-virtual-text.enable = true;
        dap-go.enable = true;
        dap-python.enable = true;
      };
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
