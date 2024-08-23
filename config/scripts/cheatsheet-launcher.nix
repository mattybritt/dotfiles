{pkgs}:
pkgs.writeShellScriptBin "cheatsheet-launcher" ''
  kitty --hold cheatsheet
''
