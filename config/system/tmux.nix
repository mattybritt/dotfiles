{ pkgs, ... }: {
  programs.tmux = {
    enable = true;
    aggressiveResize = true;
    clock24 = true;
    escapeTime = 0;
    newSession = true;
    plugins = with pkgs.tmuxPlugins; [
      vim-tmux-navigator
    ];
    secureSocket = false;
    terminal = "tmux-256color";
    historyLimit = 30000;
    keyMode = "vi";
    extraConfig = ''
      set-option -g default-command fish

      set -s escape-time 0

      unbind C-b
      set-option -g prefix C-a
      bind-key C-a send-prefix

      unbind '"'
      unbind %

      unbind |
      bind | split-window -h
      unbind -
      bind - split-window -v
      unbind _
      bind _ split-window -v

      set -g mouse on

       # don't rename windows automatically
      set-option -g allow-rename off

      set -g status-position top

      set -g base-index 1


      bind-key -r f run-shell "tmux neww tmux-sessionizer"

      # set-window-option -g mode-keys vi
      bind -T copy-mode-vi v send-keys -X begin-selection
      bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard'

       # vim-like pane switching
      bind-key ^ last-window
      bind-key h select-pane -L
      bind-key j select-pane -D
      bind-key k select-pane -U
      bind-key l select-pane -R

      bind-key & kill-window
      bind-key x kill-pane

      bind-key -r D run-shell "~/scripts/tmux-sessionizer ~/git/github/mattybritt/dot"
    '';
  };
}

