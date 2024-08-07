{ pkgs, config, inputs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List System Programs
  environment.systemPackages = with pkgs; [
    wget curl git cmatrix lolcat neofetch htop btop libvirt
    polkit_gnome lm_sensors unzip unrar libnotify eza
    v4l-utils ydotool wl-clipboard socat cowsay lshw
    pkg-config meson hugo gnumake ninja symbola
    noto-fonts-color-emoji material-icons brightnessctl
    toybox virt-viewer spice spice-protocol win-virtio win-spice swappy ripgrep appimage-run
    networkmanagerapplet yad playerctl nh fzf bash bat just eza zoxide gcc swtpm inotify-tools
  ];

  programs = {
    dconf.enable = true;
    seahorse.enable=true;
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
                    }).fd];
      };
    };
  };
}
