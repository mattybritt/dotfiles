{ ... }:

{
  programs.nixvim.plugins.telescope = {
    enable = true;

    enabledExtensions = [ "ui-select" ];
    extensions.ui-select.enable = true;
    extensions.frecency.enable = false;
    extensions.fzf-native.enable = true;

    keymaps = {
      "<leader>ff" = "find_files";
      "<leader>fs" = "grep_string";
      "<leader>fg" = "live_grep";
    };
  };
}
