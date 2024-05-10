{ config, pkgs, lib, username, host, ... }:

let 
  inherit ( import ../../hosts/${host}/options.nix ) username;
in
{
  environment.persistence."/nix/persist" = {
    hideMounts = true;
    directories = [
      "/var/log"
      "/var/lib/bluetooth"
      "/var/lib/nixos"
      "/var/lib/systemd/coredump"
      "/etc/NetworkManager/system-connections"
    ];
    files = [
      # "/etc/machine-id"
    ];
    users.${username} = {
      directories = [
      "Downloads"
      "Music"
      "Documents"
      "Pictures"
      ".local/share/sddm"
      ".mozilla"
      ".cache"
      ".ssh"
      ".config/discord"
      ".config/obs-studio"
      ];
      files = [
      ];
    };
  };
}
