{ config, lib, pkgs, host, ... }:

let inherit (import ../../hosts/${host}/options.nix) flakeDir flakePrev
	     hostname flakeBackup theShell; in
lib.mkIf (theShell == "bash") {
  # Configure Bash
  programs.bash = {
    enable = true;
    # enableCompletion = true;
    # initExtra = ''
    #   export PATH=$PATH:/home/matt/.scripts
    # '';
    # shellAliases = {
    #   sv="sudo nvim";
    #   flake-rebuild="nh os switch --hostname ${hostname}";
    #   flake-update="nh os switch --hostname ${hostname} --update";
    #   gcCleanup="nix-collect-garbage --delete-old && sudo nix-collect-garbage -d && sudo /run/current-system/bin/switch-to-configuration boot";
    #   v="nvim";
    #   ls="lsd";
    #   ll="lsd -l";
    #   la="lsd -a";
    #   lal="lsd -al";
    #   ".."="cd ..";
    #   neofetch="neofetch --ascii ~/.config/ascii-neofetch";
    # };
  };
}
