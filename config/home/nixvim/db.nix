{ pkgs, ... }:

{
  programs.nixvim = {
      extraPlugins = [
                (pkgs.vimUtils.buildVimPlugin {
                name = "vim-dadbod";
                 src = pkgs.fetchFromGitHub {
                     owner = "tpope";
                     repo = "vim-dadbod";
                     rev = "7888cb7";
                     hash = "sha256-8wnUSYctVn3JeCVz2fdi9qcKi8ZyA4To+xs4WaP6rog=";
                 };
               })
                (pkgs.vimUtils.buildVimPlugin {
                name = "vim-dadbod-ui";
                 src = pkgs.fetchFromGitHub {
                     owner = "kristijanhusak";
                     repo = "vim-dadbod-ui";
                     rev = "0f51d8d";
                     hash = "sha256-+WQkYVopdw6eddhSyMqAvgD8V3De505jI6ruUzkPZt0=";
                 };
               })
           ];

      extraConfigLua = ''
        '';
    };
}
