{
  pkgs,
  inputs,
  ...
}: {
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

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
    eza
    eza
    fzf
    gcc
    git
    gitui
    glow
    gnumake
    htop
    hugo
    inotify-tools
    just
    jq
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
