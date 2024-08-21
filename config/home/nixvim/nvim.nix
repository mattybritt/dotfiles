{ ... }:

{
  imports = [
    ./conform.nix
    ./dap.nix
    ./db.nix
    ./diffview.nix
    ./gitsigns.nix
    ./harpoon.nix
    ./keymaps.nix
    ./lsp.nix
    ./neogit.nix
    ./nvim-cmp.nix
    ./nvim-tree.nix
    ./prettier.nix
    ./telescope.nix
    ./treesitter.nix
    ./trouble.nix
    ./twilight.nix
    ./vim-be-good.nix
    ./zenmode.nix
  ];
  programs = {
    nixvim = {
      enable = true;
      globals.mapleader = " ";
      clipboard.providers.wl-copy.enable = true;

      opts = {
        backup = false;
        colorcolumn = "80";
        expandtab = true;
        hlsearch = true;
        incsearch = true;
        number = true;
        relativenumber = true;
        scrolloff = 8;
        shiftwidth = 2;
        signcolumn = "yes";
        smartindent = true;
        softtabstop = 4;
        swapfile = false;
        tabstop = 4;
        termguicolors = true;
        undofile = true;
        updatetime = 50;
        wrap = false;
      };

      plugins = {
        copilot-vim.enable = true; #copilot support for vim
        lspkind.enable = true; #Pictograms to neovim built-in lsp
        lualine.enable = true; #footer line
        luasnip.enable = true; #snippets
        nix.enable = true; # support nix expressions
        nvim-autopairs.enable = true; #bracket pairing
        nvim-colorizer.enable = true; #hex colours
        rust-tools.enable = true; # rust tooling
        ts-autotag.enable = true; #autotags
        undotree.enable = true; #undo kak
      };

      colorschemes.catppuccin = {
        enable = true;
      };

      #Highlight on yank
      extraConfigLua = ''
        local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
        vim.api.nvim_create_autocmd('TextYankPost', {
          callback = function()
            vim.highlight.on_yank()
          end,
          group = highlight_group,
          pattern = '*',
        })
        require('nvim-dap-virtual-text').setup()
        vim.fn.sign_define('DapBreakpoint', { text='⭕', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint' })
        vim.cmd('hi Normal guibg=NONE ctermbg=NONE')

        vim.cmd('hi NormalNC guibg=NONE ctermbg=NONE')
        vim.cmd('hi NvimTreeNormal guibg=NONE ctermbg=NONE')

        vim.filetype.add({ extension = { templ = "templ" } })
        '';

        extraPlugins = [];
    };
  };
}
