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
    bash
    bat
    brightnessctl
    btop
    curl
    eza
    flyctl
    fzf
    gcc
    git
    gitui
    gimp
    glow
    gnumake
    htop
    hugo
    inotify-tools
    jq
    just
    k3s
    libnotify
    libvirt
    lm_sensors
    lshw
    material-icons
    meson
    mods
    nb
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
    trashy
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
