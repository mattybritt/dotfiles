{pkgs, ...}: {
  programs.nixvim = {
    plugins = {
      cmp = {
        enable = true;
        settings.sources = [
          {name = "nvim_lsp";}
          {name = "path";}
          {name = "buffer";}
          {name = "luasnip";}
          {name = "cmdline";}
        ];

        settings.mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<S-k>" = "cmp.mapping.select_prev_item(cmp_select)";
          "<S-j>" = "cmp.mapping.select_next_item(cmp_select)";
          "<C-CR>" = "cmp.mapping.confirm({ select = true })";
        };
        settings.snippet.expand = ''
          function(args)
          require('luasnip').lsp_expand(args.body)
          end
        '';
      };
      cmp-cmdline.enable = true;
    };

    extraPlugins = [
      (pkgs.vimUtils.buildVimPlugin {
        name = "vim-dadbod-completion";
        src = pkgs.fetchFromGitHub {
          owner = "kristijanhusak";
          repo = "vim-dadbod-completion";
          rev = "880f7e9";
          hash = "sha256-kci8ksgSRPmRhwTYw7Ya1v4hwPjN4BLFjV6+6YiK1hA=";
        };
      })
    ];

    extraConfigLua = ''
      local autocomplete_group = vim.api.nvim_create_augroup('vimrc_autocompletion', { clear = true })
      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'sql', 'mysql', 'plsql' },
        callback = function()
          cmp.setup.buffer({ sources = { { name = 'vim-dadbod-completion' } } })
        end,
        group = autocomplete_group,
      })
    '';
  };
}
