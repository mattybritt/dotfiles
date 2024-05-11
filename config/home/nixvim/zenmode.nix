{
  programs.nixvim = {
    plugins.zen-mode = {
      enable = true;
        settings = {
    on_close = ''
      function()
        require("gitsigns.actions").toggle_current_line_blame()
        vim.opt.relativenumber = true
        vim.opt.signcolumn = "yes:2"
        require("gitsigns.actions").refresh()
      end
    '';
    on_open = ''
      function()
        require("gitsigns.actions").toggle_current_line_blame()
        vim.opt.relativenumber = true
        vim.opt.signcolumn = "no"
        require("gitsigns.actions").refresh()
      end
    '';
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