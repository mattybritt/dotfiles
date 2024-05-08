{ pkgs, ... }:

{
  imports = [
    ./lsp.nix
    ./conform.nix
    ./bufferline.nix
    ./nvim-tree.nix
    ./telescope.nix
    ./prettier.nix
    ./lsp-servers.nix
    ./treesitter.nix

    #todo below
    ./keymaps.nix
    ./nvim-cmp.nix
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
        lualine.enable = true; #footer line
        copilot-vim.enable = true; #copilot support for vim
        undotree.enable = true; #undo kak

        # maybe
        # harpoon.enable = true;
      };

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
