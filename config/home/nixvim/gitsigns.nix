{
  programs.nixvim = {
    plugins.gitsigns = {
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
}
