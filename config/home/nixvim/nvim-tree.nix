{...}: {
  programs.nixvim = {
    plugins.nvim-tree = {
      enable = true;
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>e";
        action = "<cmd>NvimTreeToggle<NL>";
      }
      {
        mode = "n";
        key = "<c-n>";
        action = "<cmd>NvimTreeFindFileToggle<NL>";
      }
    ];
  };
}
