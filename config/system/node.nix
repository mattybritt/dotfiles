{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    nodejs
    nodePackages.parcel
  ];
}
