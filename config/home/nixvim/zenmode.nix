{
  programs.nixvim = {
    plugins.zen-mode = {
      enable = true;
        settings = {
    plugins = {
      gitsigns = {
        enabled = false;
      };
      options = {
        enabled = true;
        ruler = false;
        showcmd = false;
      };
      tmux = {
        enabled = false;
      };
      twilight = {
        enabled = true;
      };
    };
    window = {
      backdrop = 1;
      height = 1;
      options = {
        signcolumn = "no";
      };
      width = 0.7;
    };
  };
      
    };
    keymaps = [
         {
          mode = "n";
          key = "<leader>zm";
          action = "<cmd>ZenMode<CR>";
        }
    ];
  };

}
