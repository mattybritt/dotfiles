{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    tmux
    tmuxPlugins.vim-tmux-navigator
  ];
}
