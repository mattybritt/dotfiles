{...}: {
  programs.nixvim.plugins.conform-nvim = {
    enable = true;
    formatOnSave = {
      timeoutMs = 500;
      lspFallback = true;
    };
    formattersByFt = {
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
}
