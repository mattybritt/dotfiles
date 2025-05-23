{...}: {
  programs.fish = {
    enable = true;

    shellInit =
      /*
      fish
      */
      ''
        set -U fish_greeting ""

        export EDITOR='nvim'
        export PATH="/home/matt/.scripts:$PATH"
        export TERMCMD="kitty --single-instance"
        export DIRENV_LOG_FORMAT=""

        export GPG_TTY=(tty)

        set -x -U LESS_TERMCAP_md (printf "\e[01;31m")
        set -x -U LESS_TERMCAP_me (printf "\e[0m")
        set -x -U LESS_TERMCAP_se (printf "\e[0m")
        set -x -U LESS_TERMCAP_so (printf "\e[01;44;30m")
        set -x -U LESS_TERMCAP_ue (printf "\e[0m")
        set -x -U LESS_TERMCAP_us (printf "\e[01;32m")
        set -x -U MANROFFOPT "-c"

        bind \cf 'tmux-sessionizer'

        fish_vi_key_bindings

        if string match -qe -- "/dev/pts/" (tty)
          alias ssh="kitty +kitten ssh"
        end

        eval "$(zoxide init fish --cmd cd)"
      '';

    shellAliases = {
      tree = "eza --all --long --tree";
      mv = "mv -i";
      rm = "rm -i";
      cp = "cp -ia";
      rg = "rg --max-columns=2000 --smart-case";
      cat = "bat";
      v = "vim";
      vi = "vim";
      code = "nvim";
      g = "git";
      lsa = "eza -la";
      ls = "eza --color=auto";
      la = "eza -a";
      ll = "eza -alFh";
      l = "eza";
      listdir = "eza -d */ > list";
      pdw = "pwd";
      ssn = "sudo shutdown now";
      sr = "reboot";
      flake-rebuild = "nh os switch --hostname nixos";
      flake-update = "nh os switch --hostname nixos --update";
      gcCleanup = "nix-collect-garbage --delete-old && sudo nix-collect-garbage -d && sudo /run/current-system/bin/switch-to-configuration boot";
      ai = "mods";
      aic = "mods -C";
      "?" = "duck";
      "??" = "google";
      ".." = "cd ..";
    };

    shellAbbrs = {
      g = "git";
      ga = "git add";
      gaa = "git add --all";
      gap = "git add --patch";
      gapp = "git apply";
      gb = "git branch --verbose";
      gbr = "git branch --verbose --remotes";
      gbd = "git branch --delete";
      gbD = "git branch --delete --force";
      gc = "git commit -m";
      gca = "git commit --amend";
      gcl = "git clone";
      gco = "git checkout";
      gcot = "git checkout --theirs";
      gcp = "git cherry-pick --strategy-option theirs";
      gcpx = "git cherry-pick --strategy-option theirs -x";
      gd = "git diff";
      gds = "git diff --staged";
      gf = "git fetch";
      gi = "git init";
      gl = "git log --oneline --decorate --graph -n 10";
      gm = "git merge";
      gp = "git push";
      gpu = "git pull";
      gr = "git reset HEAD~";
      gR = "git restore";
      gRs = "git restore --staged";
      gra = "git remote add";
      gre = "git remote --verbose";
      grh = "git reset HEAD";
      grr = "git reset --hard HEAD~";
      grb = "git rebase --interactive";
      grbc = "git rebase --continue";
      gs = "git status";
      gsma = "git submodule add";
      gsmu = "git submodule update --init --remote --recursive";
      gst = "git stash";
      gstp = "git stash pop";
      gsw = "git switch";
      gt = "git tag";
      gts = "git tag -s";

      tp = "trash put";
      tl = "trash list";
      tr = "trash restore";
      te = "trash empty";

      nf = "nix flake";
      nfc = "nix flake check";
      nfu = "nix flake update";
      npr = "nixpkgs-review pr --run fish --print-result";
      nd = "nix develop --command fish";
      ns = "nix shell";
      nr = "nix run";
      ncg = "sudo nix-collect-garbage -d && nix-collect-garbage -d";
      nvd = "nvd --color always diff /run/current-system result | less -R";

      ci = "cargo init";
      cin = "cargo info";
      cu = "cargo update";
      ca = "cargo add";
      cab = "cargo add --build";
      cad = "cargo add --dev";
      cb = "cargo build";
      cr = "cargo run";
      cs = "cargo search";
      ct = "cargo test";
      cT = "cargo tree --depth 1";
      cn = "cargo new";
      crm = "cargo remove";
      crmb = "cargo remove --build";
      crmd = "cargo remove --dev";
      cc = "cargo clippy";
      cf = "cargo fmt";

      dl = "yt-dlp";
      vol = "wpctl set-volume '@DEFAULT_AUDIO_SINK@'";
      df = "df --human-readable --total";
      du = "du --human-readable --summarize";
      jis = "recode shift_jis..utf8";
      utf16 = "recode utf16..utf8";
      jp = "LANG=ja_JP.UTF-8 LC_ALL=ja_JP.UTF-8";
      vm = "nixos-rebuild build-vm --flake . && ./result/bin/run-nixos-vm && trash put result nixos.qcow2";
      sw = "sudo nixos-rebuild switch --flake .";
      tf = "treefmt";
      mgs = "mgitstatus";
      ncu = "ncu --interactive --format group";

      c = "clear";
      e = "exit";
      k = "kitty @ set-background-opacity";
      l = "ls -l";
      n = "nvim";
      j = "yazi";
      t = "tree";
      z = "zathura";
    };
  };
}
