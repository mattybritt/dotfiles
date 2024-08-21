{...}: {
  programs.nixvim.plugins.telescope = {
    enable = true;
    extensions.fzf-native.enable = true;

    keymaps = {
      "<leader>ff" = "find_files";
      "<leader>fr" = "oldfiles";
      "<leader>fg" = "live_grep";
      "<leader>fb" = "buffers";
      "<leader>gg" = "git_files";
    };
  };
}
