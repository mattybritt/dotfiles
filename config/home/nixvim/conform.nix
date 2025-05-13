{...}: {
  # The  conform.vim  plugin is a minimalist Vim/Neovim plugin designed to automate
  # code formatting. It provides integration with various code formatters to ensure
  # that your code adheres to predefined style guidelines without requiring manual
  # intervention. By leveraging  conform.vim , developers can maintain consistent
  # code style throughout their projects more efficiently.

  # yaml = ["prettierd"]; prettier was was messing up formatting of some files so was removed

  programs.nixvim.plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        "*" = ["codespell"];
        "_" = ["trim_whitespace"];
        go = ["goimports" "golines" "gofmt" "gofumpt"];
        json = ["jq"];
        lua = ["stylua"];
        nix = ["alejandra"];
        python = ["isort" "black"];
        rust = ["rustfmt"];
        sh = ["shfmt"];
      };
    };
  };
}
