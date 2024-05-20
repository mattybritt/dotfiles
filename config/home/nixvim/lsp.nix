{ ... }:

{
  programs.nixvim.plugins = {
    lsp-format = {enable = true;};
    lsp = {
      enable = true;
      servers = {
        eslint = {enable = true;};
        cssls = {enable = true;};
        jsonls = {enable = true;};
        nixd = {enable = true;};
        html = {enable = true;};
        lua-ls = {enable = true;};
        gopls = {enable = true;};
        tsserver = {enable = false;};
        yamlls = { enable = true; };
        omnisharp = { enable = true; };
        marksman = { enable = true; };
        rust-analyzer = { 
          enable = true;
          installCargo = true;
          installRustc = true;
        };
      };
      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace Symbol";
          };
          "<leader>cr" = {
            action = "rename";
            desc = "Rename";
          };
          "<leader>ca" = {
            action = "code_action";
            desc = "Code Action";
          };
          "<leader>f" = {
            action = "format";
            desc = "Format";
          };
        };
        diagnostic = {
          "<leader>cd" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
        };
      };
    };
  };
}
