{ pkgs, ... }:

{
  imports = [
    ./keymaps.nix
    ./nvim-cmp.nix
    ./lsp.nix
    ./bufferline.nix
    ./telescope.nix
    ./neo-tree.nix
    ./prettier.nix
    ./lsp-servers.nix
    ./treesitter.nix
    ./autopairs.nix
    ./whichkey.nix
    ./dashboard.nix
    ./efmls.nix
    ./lsp-format.nix
    ./conform.nix
  ];
  programs = {
    nixvim = {
      enable = true;
      globals.mapleader = " ";
      clipboard.providers.wl-copy.enable = true;

      options = {
        number = true;
        relativenumber = true;
        shiftwidth = 2;
        tabstop = 4;
        softtabstop = 4;
        expandtab = true;
        smartindent = true;
        wrap = false;
        swapfile = false;
        backup = false;
        undofile = true;
        hlsearch = false;
        incsearch = true;
        termguicolors = true;
        scrolloff = 8;
        signcolumn = "yes";
        updatetime = 50;
        colorcolumn = "80";
      };

      plugins = {
        nix.enable = true; # support nix expressions
        lsp-lines = { #lsp prompt lines
          enable = true;
        };
        lspkind.enable = true; #Pictograms to neovim built-in lsp
        neogit.enable = true; #Magit inspired git
        nvim-colorizer.enable = true; #hex colours
        luasnip.enable = true; #snippets
        rust-tools.enable = true; # rust tooling
      };

      #autoCmd = [
      #  {
      #    event = [ "BufWrite" ];
      #    pattern = [ "" ];
      #    command = "lua require('conform').format({ lsp_fallback = true, async = false, timeout_ms = 500 })<CR>";
      #  }
      #];

      extraPlugins = with pkgs.vimPlugins; [
      ];

      extraConfigLua =
        ''if vim.g.neovide then'' + "\n" +
        ''vim.o.guifont = "Hurmit Nerd Font:h14"'' + "\n" +

        ''vim.keymap.set('n', '<C-S-s>', ':w<CR>') -- Save'' + "\n" +
        ''vim.keymap.set('v', '<C-S-c>', '"+y') -- Copy'' + "\n" +
        ''vim.keymap.set('n', '<C-S-v>', '"+P') -- Paste normal mode'' + "\n" +
        ''vim.keymap.set('v', '<C-S-v>', '"+P') -- Paste visual mode'' + "\n" +
        ''vim.keymap.set('c', '<C-S-v>', '<C-R>+') -- Paste command mode'' + "\n" +
        ''vim.keymap.set('i', '<C-S-v>', '<ESC>l"+Pli') -- Paste insert mode'' + "\n" +
        "end";


      colorschemes.gruvbox = {
       enable = true;
      };
    };
  };
}
