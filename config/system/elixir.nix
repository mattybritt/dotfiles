{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    elixir
    elixir_ls
  ];
}
