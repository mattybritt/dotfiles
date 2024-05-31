{ pkgs, config, ... }:

{
  # Place Files Inside Home Directory
  home.file.".emoji".source = ./files/emoji;
  home.file.".base16-themes".source = ./files/base16-themes;
  home.file.".config/starship.toml".source = ./files/starship.toml;
  home.file.".config/gammastep/config.ini".source = ./files/gammastep/config.ini;
  home.file.".ssh/config".source = ./files/ssh/config;
  home.file.".scripts" = {
    source = ./files/scripts;
    recursive = true;
  };
  home.file.".local/share/fonts" = {
    source = ./files/fonts;
    recursive = true;
  };
  home.file.".config/wlogout/icons" = {
    source = ./files/wlogout;
    recursive = true;
  };
}
