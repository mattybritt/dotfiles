{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    rustc
    cargo
    dioxus-cli
    bacon
  ];
}
