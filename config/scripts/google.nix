{pkgs}:
  pkgs.writeShellScriptBin "google" ''
      url="https://google.com/search?q=$*"
      exec lynx "https://google.com/search?q=$url"
  ''

