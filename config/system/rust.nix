{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    rustup
    bacon
    cargo-generate
    cargo-leptos
    leptosfmt
    rustlings
  ];
}
