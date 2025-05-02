{pkgs}:
  pkgs.writeShellScriptBin "google" ''
      url="https://google.com/search?q=$*"
      exec w3m "https://google.com/search?q=$url"
  ''

