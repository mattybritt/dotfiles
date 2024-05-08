{ pkgs, config, ... }:

{
  # Place Files Inside Home Directory
  home.file.".emoji".source = ./files/emoji;
  home.file.".tmux.conf".source = ./files/tmux/.tmux.conf;
  home.file.".base16-themes".source = ./files/base16-themes;
  home.file.".bash_aliases".source = ./files/bash/.bash_aliases;
  home.file.".bashrc".source = ./files/bash/.bashrc;
  home.file.".inputrc".source = ./files/bash/.inputrc;
  home.file.".config/starship.toml".source = ./files/starship.toml;
  home.file.".scripts" = {
    source = ./files/scripts;
    recursive = true;
  };
  # home.file.".config/nvim" = {
  #   source = ./files/nvim;
  #   recursive = true;
  # };
  home.file.".local/share/fonts" = {
    source = ./files/fonts;
    recursive = true;
  };
  home.file.".config/wlogout/icons" = {
    source = ./files/wlogout;
    recursive = true;
  };
}
