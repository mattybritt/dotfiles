{ pkgs, config, browser, wallpaperDir, flakeDir, ... }:

{
  # Install Packages For The User
  home.packages = with pkgs; [
    pkgs."${browser}" discord libvirt swww grim slurp gnome.file-roller
    swaynotificationcenter rofi-wayland imv transmission-gtk mpv
    gimp obs-studio blender kdenlive godot_4 rustup pavucontrol audacity
    zeroad xonotic openra font-awesome spotify swayidle vim neovide neovim
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    # Import Scripts
    (import ./../scripts/emopicker9000.nix { inherit pkgs; })
    (import ./../scripts/task-waybar.nix { inherit pkgs; })
    (import ./../scripts/squirtle.nix { inherit pkgs; })
    (import ./../scripts/wallsetter.nix { inherit pkgs; inherit wallpaperDir; })
    (import ./../scripts/themechange.nix { inherit pkgs; inherit flakeDir; })
    (import ./../scripts/theme-selector.nix { inherit pkgs; })
  ];
}