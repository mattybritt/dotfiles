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

        diffview.enable = true;
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
        {
          mode = "n";
          key = "<leader>do";
          action = "<cmd>DiffviewOpen<CR>";
        }
        {
          mode = "n";
          key = "<leader>dq";
          action = "<cmd>DiffviewClose<CR>";
        }
      ];
    };
}
