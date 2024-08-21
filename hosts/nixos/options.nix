let
  setUsername = "matt";
  setHostname = "nixos";
in {
  username = "${setUsername}";
  hostname = "${setHostname}";
  userHome = "/home/${setUsername}";
  flakeDir = "/home/${setUsername}/git/github/mattybritt/dotfiles";
  wallpaperGit = "https://github.com/mattybritt/wallpapers.git";
  wallpaperDir = "/home/${setUsername}/Pictures/Wallpapers";
  screenshotDir = "/home/${setUsername}/Pictures/Screenshots";

  gitUsername = "Matt Britt";
  gitEmail = "mattybritt@gmail.com";

  theme = "catppuccin-macchiato";

  # Hyprland Settings
  borderAnim = true; # Enable / Disable Hyprland Border Animation
  extraMonitorSettings = "
    monitor=HDMI-A-1,3840x2160@60,0x0,1
    monitor=DP-1,3840x2160@60,3840x0,1
  ";

  # Waybar Settings
  waybarAnim = true; # Enable / Disable Waybar Animation CSS
  bar-number = true; # Enable / Disable Workspace Numbers In Waybar

  # System Settings
  clock24h = false;
  theLocale = "en_US.UTF-8";
  theKBDLayout = "us";
  theSecondKBDLayout = "de";
  theKBDVariant = "";
  theLCVariables = "en_ZA.UTF-8";
  theTimezone = "Africa/Johannesburg";
  theShell = "fish";
  theKernel = "zen"; # Possible options: default, latest, lqx, xanmod, zen
  sdl-videodriver = "x11"; # Either x11 or wayland ONLY. Games might require x11 set here
  # For Hybrid Systems intel-nvidia
  # Should Be Used As gpuType
  cpuType = "intel";
  gpuType = "amd";

  # Nvidia Hybrid Devices ONLY NEEDED FOR HYBRID SYSTEMS!
  intel-bus-id = "PCI:1:0:0";
  nvidia-bus-id = "PCI:0:2:0";

  # Enable / Setup NFS
  nfs = false;
  nfsMountPoint = "/mnt/nas";
  nfsDevice = "nas:/volume1/nas";

  # NTP & HWClock Settings
  ntp = true;
  localHWClock = false;

  # Enable Printer & Scanner Support
  printer = false;

  # Program Options
  browser = "brave"; # Install & Set Default Browser
  terminal = "kitty"; # Set Default System Terminal
  distrobox = false;
  flatpak = false;
  kdenlive = false;
  blender = false;
  enableZeroAD = false;

  # Enable Support For
  # Logitech Devices
  logitech = false;

  # Enable Terminals ( If You Disable All You Get Kitty )
  wezterm = false;
  alacritty = false;
  kitty = true;

  # Enable Python & PyCharm
  python = false;

  # Enable SyncThing
  syncthing = false;
}
