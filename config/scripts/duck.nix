{pkgs}:
pkgs.writeShellScriptBin "duck" ''
    url="https://lite.duckduckgo.com/lite?kd=-1&kp=-1&q=$*"
    exec w3m "$url"
    ''
