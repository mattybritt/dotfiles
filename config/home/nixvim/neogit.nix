{
  programs.nixvim = {
    plugins.neogit = {
      enable = true;
    };
    keymaps = [
         {
          mode = "n";
          key = "<leader>gs";
          action = "<cmd>Neogit<CR>";
        }
        {
          mode = "n";
          key = "<leader>gc";
          action = "<cmd>Neogit commit<CR>";
        }
        {
          mode = "n";
          key = "<leader>gb";
          action = "<cmd>Telescope git_branches<CR>";
        }
    ];
  };

}
