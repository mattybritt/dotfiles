{...}: {
  programs.nixvim.plugins = {
    cmp-treesitter.enable = true;
    treesitter = {
      enable = true;
      settings = {
        highlight.enable = true;
        indent.enable = false;
      };
    };
    treesitter-refactor = {
      enable = true;
      highlightCurrentScope.enable = true;
      highlightCurrentScope.disable = [
        "nix"
      ];
      highlightDefinitions.enable = true;
      navigation.enable = true;
      smartRename.enable = true;
    };
  };
}
