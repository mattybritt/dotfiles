{ config, pkgs, ... }:

{
  imports = [
    ./amd-gpu.nix
    ./appimages.nix
    ./autorun.nix
    ./boot.nix
    ./displaymanager.nix
    ./distrobox.nix
    ./flatpak.nix
    ./go.nix
    ./hwclock.nix
    ./intel-amd.nix
    ./intel-gpu.nix
    ./intel-nvidia.nix
    ./kernel.nix
    ./logitech.nix
    ./nfs.nix
    ./ntp.nix
    ./nvidia.nix
    ./packages.nix
    ./polkit.nix
    ./printer.nix
    ./python.nix
    ./rust.nix
    ./services.nix
    ./syncthing.nix
    ./vm.nix
  ];
}
