{pkgs}:
pkgs.writeShellScriptBin "cheatsheet" ''
  glow /home/matt/git/github/mattybritt/dotfiles/config/home/files/cheatsheet.md
''
