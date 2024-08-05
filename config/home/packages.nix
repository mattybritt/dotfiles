{ pkgs, config, username, host, ... }:

let
  inherit (import ../../hosts/${host}/options.nix)
    browser wallpaperDir wallpaperGit flakeDir;
in {
  # Install Packages For The User
  home.packages = with pkgs; [
    pkgs."${browser}" slack whatsapp-for-linux libvirt swww grim slurp gnome.file-roller
    swaynotificationcenter rofi-wayland imv transmission-gtk mpv
    audacity pavucontrol tree protonup-qt
    font-awesome spotify swayidle vscode azuredatastudio
    bitwarden speedtest-cli tmuxifier zathura gammastep burpsuite firefox
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    # Import Scripts
    (import ./../scripts/emopicker9000.nix { inherit pkgs; })
    (import ./../scripts/task-waybar.nix { inherit pkgs; })
    (import ./../scripts/squirtle.nix { inherit pkgs; })
    (import ./../scripts/wallsetter.nix { inherit pkgs; inherit wallpaperDir;
      inherit username; inherit wallpaperGit; })
    (import ./../scripts/themechange.nix { inherit pkgs; inherit flakeDir; inherit host; })
    (import ./../scripts/nvidia-offload.nix { inherit pkgs; })
    (import ./../scripts/web-search.nix { inherit pkgs; })
    (import ./../scripts/rofi-launcher.nix { inherit pkgs; })
    (import ./../scripts/screenshootin.nix { inherit pkgs; })
  ];

  programs.gh.enable = true;
}
