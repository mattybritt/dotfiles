{ pkgs, config, ... }:

{
  imports = [
    # Enable &/ Configure Programs
    ./nixvim/nvim.nix
    ./alacritty.nix
    ./gtk-qt.nix
    ./hyprland.nix
    ./kdenlive.nix
    ./kitty.nix
    ./neofetch.nix
    ./packages.nix
    ./rofi.nix
    ./starship.nix
    ./waybar.nix
    ./wlogout.nix
    ./swappy.nix
    ./swaync.nix
    ./wezterm.nix
    ./zeroad.nix

    # Place Home Files Like Pictures
    ./files.nix
  ];
}
