{
  programs.nixvim = {
    plugins.diffview = {
      enable = true;
    };
    keymaps = [
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
