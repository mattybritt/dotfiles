{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    rustc
    cargo
    cargo-watch
    dioxus-cli
    bacon
    rustfmt
  ];
}
