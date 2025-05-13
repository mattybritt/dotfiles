{...}: {
  # The  conform.vim  plugin is a minimalist Vim/Neovim plugin designed to automate
  # code formatting. It provides integration with various code formatters to ensure
  # that your code adheres to predefined style guidelines without requiring manual
  # intervention. By leveraging  conform.vim , developers can maintain consistent
  # code style throughout their projects more efficiently.

  programs.nixvim.plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        "*" = ["codespell"];
        "_" = ["trim_whitespace"];
        css = ["prettierd"];
        elixir = ["mix"];
        go = ["goimports" "golines" "gofmt" "gofumpt"];
        javascript = ["prettierd"];
        json = ["jq"];
        lua = ["stylua"];
        nix = ["alejandra"];
        python = ["isort" "black"];
        rust = ["rustfmt"];
        scss = ["prettierd"];
        sh = ["shfmt"];
        typescript = ["prettierd"];
        yaml = ["prettierd"];
      };
    };
  };
}
