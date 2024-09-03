{pkgs}:
pkgs.writeShellScriptBin "cheatsheet" ''
  kitty @ set-window-title CheatSheet
  glow /home/matt/git/github/mattybritt/dotfiles/config/home/files/cheatsheet.md
''
