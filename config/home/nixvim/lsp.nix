{...}: {
  programs.nixvim.plugins = {
    lsp-format = {enable = true;};
    lsp = {
      enable = true;
      servers = {
        cssls = {
          enable = true;
          settings = {
            css = {
              lint = {
                unknownAtRules = "ignore";
              };
            };
          };
        };
        elixirls = {enable = true;};
        eslint = {enable = true;};
        gopls = {enable = true;};
        html = {enable = true;};
        jsonls = {enable = true;};
        lua-ls = {enable = true;};
        marksman = {enable = true;};
        nixd = {enable = true;};
        omnisharp = {enable = true;};
        rust-analyzer = {
          enable = true;
        };
        tailwindcss = {
          enable = true;
          filetypes = ["html" "elixir" "eelixir" "heex"];

          # filetypes = { "html", "elixir", "eelixir", "heex" },
          #   init_options = {
          #     userLanguages = {
          #       elixir = "html-eex",
          #       eelixir = "html-eex",
          #       heex = "html-eex",
          #     },
          #   },
          #   settings = {
          #     tailwindCSS = {
          #       experimental = {
          #         classRegex = {
          #           'class[:]\\s*"([^"]*)"',
          #         },
          #       },
          #     },
          #   },
        };
        templ = {enable = true;};
        tsserver = {enable = false;};
        yamlls = {enable = true;};
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
          "<leader>cf" = {
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
