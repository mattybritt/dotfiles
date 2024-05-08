{ ... }:

{
  programs.nixvim.plugins = {
    cmp = {
      enable = true;
      extraOptions.sources =
        [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
          { name = "luasnip"; }
          { name = "cmdline"; }
        ];

        settings.mapping = {
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-e>" = "cmp.mapping.close()";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        };
        settings.snippet.expand = ''
        function(args)
        require('luasnip').lsp_expand(args.body)
        end
        '';
      };
      cmp-cmdline.enable = true;
    };
  }

# TODO
# ['<C-b>'] = cmp.mapping.scroll_docs(-4),
# ['<C-f>'] = cmp.mapping.scroll_docs(4),
# ['<C-o>'] = cmp.mapping.complete(),
# ['<C-e>'] = cmp.mapping.abort(),
# ['<CR>'] = cmp.mapping.confirm({ select = true }),
# ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
# ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
# ['<C-y>'] = cmp.mapping.confirm({ select = true }),
# ["<C-Space>"] = cmp.mapping.complete(),

