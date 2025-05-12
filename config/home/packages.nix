{
  pkgs,
  config,
  username,
  host,
  ...
}: let
  inherit
    (import ../../hosts/${host}/options.nix)
    browser
    wallpaperDir
    wallpaperGit
    flakeDir
    ;
in {
  # Install Packages For The User
  home.packages = with pkgs; [
    pkgs."${browser}"
    audacity
    azuredatastudio
    bitwarden-cli
    file-roller
    firefox
    font-awesome
    gammastep
    grim
    imv
    libvirt
    mpv
    obsidian
    pavucontrol
    protonup-qt
    qutebrowser
    rofi-wayland
    slurp
    spotify
    swayidle
    swaynotificationcenter
    swww
    tmuxifier
    tree
    w3m
    zathura
    nerd-fonts.jetbrains-mono
    # Import Scripts
    (import ./../scripts/emopicker9000.nix {inherit pkgs;})
    (import ./../scripts/task-waybar.nix {inherit pkgs;})
    (import ./../scripts/squirtle.nix {inherit pkgs;})
    (import ./../scripts/cheatsheet.nix {inherit pkgs;})
    (import ./../scripts/cheatsheet-launcher.nix {inherit pkgs;})
    (import ./../scripts/wallsetter.nix {
      inherit pkgs;
      inherit wallpaperDir;
      inherit username;
      inherit wallpaperGit;
    })
    (import ./../scripts/themechange.nix {
      inherit pkgs;
      inherit flakeDir;
      inherit host;
    })
    (import ./../scripts/nvidia-offload.nix {inherit pkgs;})
    (import ./../scripts/web-search.nix {inherit pkgs;})
    (import ./../scripts/rofi-launcher.nix {inherit pkgs;})
    (import ./../scripts/screenshootin.nix {inherit pkgs;})
    (import ./../scripts/duck.nix {inherit pkgs;})
    (import ./../scripts/google.nix {inherit pkgs;})
  ];

  programs.gh.enable = true;
}
