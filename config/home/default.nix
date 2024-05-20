{ pkgs, config, ... }:

{
  imports = [
    # Enable &/ Configure Programs
    ./nixvim/nvim.nix
    ./alacritty.nix
    ./fish.nix
    ./gtk-qt.nix
    ./hyprland.nix
    ./kdenlive.nix
    ./kitty.nix
    ./neofetch.nix
    ./packages.nix
    ./rofi.nix
    ./starship.nix
    ./swappy.nix
    ./swaync.nix
    ./tmux.nix
    ./waybar.nix
    ./wezterm.nix
    ./wlogout.nix
    ./zeroad.nix

    # Place Home Files Like Pictures
    ./files.nix
  ];
}
