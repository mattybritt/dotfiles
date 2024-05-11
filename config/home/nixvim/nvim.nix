{ pkgs, ... }:

{
  imports = [
    ./lsp.nix
    ./conform.nix
    ./nvim-tree.nix
    ./telescope.nix
    ./prettier.nix
    ./treesitter.nix
    ./keymaps.nix
    ./nvim-cmp.nix
    ./harpoon.nix
  ];
  programs = {
    nixvim = {
      enable = true;
      globals.mapleader = " ";
      clipboard.providers.wl-copy.enable = true;

      opts = {
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
        hlsearch = true;
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
        nvim-colorizer.enable = true; #hex colours
        luasnip.enable = true; #snippets
        rust-tools.enable = true; # rust tooling
        lualine.enable = true; #footer line
        copilot-vim.enable = true; #copilot support for vim
        undotree.enable = true; #undo kak

        neogit.enable = true; #Magit inspired git
        diffview.enable = true;  #diffs daaa
        gitsigns.enable = true; #Git decorations
        #TODO 
        #GIT SHORTCUTS
      };

      colorschemes.catppuccin = {
        enable = true;
      };

      #This will set transparency
      # extraConfigLua = ''
      #   vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
      #   vim.cmd('hi NormalNC guibg=NONE ctermbg=NONE')
      #   vim.cmd('hi NvimTreeNormal guibg=NONE ctermbg=NONE')
      # '';
     
    };
  };
}
