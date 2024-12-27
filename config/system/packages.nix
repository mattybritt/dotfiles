{
  pkgs,
  inputs,
  ...
}: {
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  nixpkgs.config.permittedInsecurePackages = [
    "dotnet-core-combined"
    "dotnet-sdk-6.0.428" # not sure whats causing this dependency
    "dotnet-sdk-wrapped-6.0.428"
    "dotnet-sdk-7.0.410"
  ];

  # List System Programs
  environment.systemPackages = with pkgs; [
    alejandra
    appimage-run
    bash
    bat
    brightnessctl
    btop
    cmatrix
    codespell # potentially remove?
    cowsay
    curl
    dotnet-sdk_8
    eza
    eza
    fzf
    flyctl
    gcc
    git
    gitui
    glow
    gnumake
    htop
    hugo
    inotify-tools
    jq
    just
    libnotify
    libvirt
    lm_sensors
    lolcat
    lshw
    material-icons
    meson
    neofetch
    networkmanagerapplet
    nh
    ninja
    noto-fonts-color-emoji
    pkg-config
    playerctl
    polkit_gnome
    prettierd
    ripgrep
    rtx
    sass
    shfmt
    socat
    spice
    spice-protocol
    sqlcmd
    swappy
    swtpm
    symbola
    toybox
    unrar
    unzip
    v4l-utils
    virt-viewer
    wget
    win-spice
    win-virtio
    wl-clipboard
    yad
    ydotool
    zed-editor
    zoxide
  ];

  programs = {
    dconf.enable = true;
    seahorse.enable = true;
    hyprland = {
      enable = true;
      package = inputs.hyprland.packages.${pkgs.system}.hyprland;
      xwayland.enable = true;
    };
    fuse.userAllowOther = true;
    mtr.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
    virt-manager.enable = true;
  };

  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      package = pkgs.qemu_kvm;
      runAsRoot = true;
      swtpm.enable = true;
      ovmf = {
        enable = true;
        packages = [
          (pkgs.OVMFFull.override {
            secureBoot = true;
            tpmSupport = true;
          })
          .fd
        ];
      };
    };
  };
}
