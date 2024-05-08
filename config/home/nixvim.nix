{ pkgs, ... }: {
  programs.nixvim = {
    enable = true;

    plugins = {
      nvim-tree.enable = true;
      oil.enable = true;
      diffview.enable = true;
      gitsigns.enable = true;
      gitlinker.enable = true;
      telescope.enable = true;
      rust-tools.enable = true;
      copilot-vim.enable = true;
      cmp.enable = true;
      lualine = {
        enable = true;
        extensions = ["nvim-tree" "fzf" "fugitive"];
        iconsEnabled = false;
        globalstatus = true;
        disabledFiletypes.statusline = ["DiffviewFiles" "fzf" "DiffviewFileHistory"];
        sectionSeparators = {
          left = "";
          right = "";
        };
        sections = {
          lualine_a = ["mode"];
          lualine_b = [];
          lualine_c = [
            "filename"
            {
              color = {
                bg = "#16161D";
              };
            }
          ];
          lualine_x = [
            "filetype"
            {
              color = {
                bg = "#16161D";
              };
            }
          ];
          lualine_y = ["diff" "branch"];
        };
     };
    };

    keymaps = [
      {
        action = "<cmd>Telescope live_grep<CR>";
        key = "<leader>fg";
      }
      {
        action = "<cmd>Telescope find_files<CR>";
        key = "<leader>ff";
      }
      {
        action = "<cmd>NvimTreeFindfile<CR>";
        key = "<c-n>";
      }
      {
        action = "<cmd>NvimTreeToggle<CR>";
        key = "<leader>n";
      }
    ];

    extraPlugins = with pkgs.vimPlugins; [
      # {
      #   plugin = vim-dispatch;
      # }
      # {
      #   plugin = vim-jack-in;
      # }
      # {
      #   plugin = vim-dispatch-neovim;
      # }
    ];

    plugins.lsp = {
      enable = true;

      servers = {
        tsserver.enable = true;
        gopls.enable = true;
        nixd.enable = true;
        rust-analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;
        };
        lua-ls = {
          enable = true;
          settings.telemetry.enable = false;
        };
      };

      keymaps = {
        silent = true;
        lspBuf = {
          K = "hover";
          gd = "definition";
          gD = "declaration";
          gi = "implementation";
        };
      };
    };

    opts = {
      expandtab = true;
      number = true;
      relativenumber = true;
      clipboard = "unnamedplus";
      tabstop = 2;
      softtabstop = 2;
      shiftwidth = 2;
    };

    globals.mapleader = " ";
    globals.maplocalleader = ",";
  };
}
