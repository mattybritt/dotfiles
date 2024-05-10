{ ... }:

{
  programs.nixvim.plugins = {
    cmp = {
      enable = true;
      settings.sources =
        [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
          { name = "luasnip"; }
          { name = "cmdline"; }
        ];

        settings.mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<S-k>" = "cmp.mapping.select_prev_item(cmp_select)";
          "<S-j>" = "cmp.mapping.select_next_item(cmp_select)";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
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
