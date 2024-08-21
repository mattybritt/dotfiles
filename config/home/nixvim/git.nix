{
  programs.nixvim = {
    plugins = {
        neogit = {
              enable = true;
            };

          gitsigns = {
            enable = true;
            signs = {
              add = { text = "+"; };
              change = { text = "~"; };
              topdelete = { text = "_"; };
              changedelete = { text = "~"; };
              untracked = { text = "┆"; };
            };
          };
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
